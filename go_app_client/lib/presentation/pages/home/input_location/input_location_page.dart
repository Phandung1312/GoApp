import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/core/errors/failures.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/home/input_location/sections/list_location.dart';
import 'package:go_app_client/presentation/pages/home/input_location/sections/list_location_skeleton.dart';
import 'package:go_app_client/presentation/pages/home/input_location/sections/location_field.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class InputLocationPage extends StatefulWidget {
  const InputLocationPage({super.key});

  @override
  State<InputLocationPage> createState() => _InputLocationPageState();

  static _InputLocationPageState? of(BuildContext context) =>
      context.findAncestorStateOfType<_InputLocationPageState>();
}

class _InputLocationPageState extends State<InputLocationPage> {
  bool isLoading = false;
  final TextEditingController _pickupLocationController =
      TextEditingController();
  final TextEditingController _desLocationController = TextEditingController();
  SelectLocation currentSelection = SelectLocation.pickupLocation;
  set currentSelectionState(SelectLocation selectLocation) {
    setState(() {
      if (currentSelection == SelectLocation.pickupLocation) {
        final state = BlocProvider.of<BookingBloc>(context).state;
        if (state.mapRoutingParams?.pickupLocation == null)
          _pickupLocationController.text = "";
      }
      currentSelection = selectLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        if (state is BookingLoadError) {
          {
            var failure = state.failure;
            String errorMessage = "";
            switch (failure.runtimeType) {
              case ApiServerFailure:
                errorMessage = (failure as ApiServerFailure).message;
                break;
              default:
                errorMessage = "Đã xảy ra lỗi, vui lòng thử lại sau";
                break;
            }
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(errorMessage),
              action: SnackBarAction(label: "Đã rõ", onPressed: () {}),
            ));
          }
          return;
        }

        if (state is BookingLocatingLocation) {
          Navigator.pushNamed(context, Paths.pickLocation);
          return;
        }
        if (state is BookingLoadPlaceDetailSuccess) {
          var isPickup = currentSelection == SelectLocation.pickupLocation;
          if (isPickup) {
            context.read<BookingBloc>().add(BookingEvent.updateRouteParams(
                pickupPoint: LatLng(state.mapPlace.lat, state.mapPlace.lng),
                pickupDescription: state.mapPlace.display));
            _pickupLocationController.text = state.mapPlace.display;
            setState(() {
              currentSelection = SelectLocation.desLocation;
            });
          } else {
            context.read<BookingBloc>().add(BookingEvent.updateRouteParams(
                destinationPoint:
                    LatLng(state.mapPlace.lat, state.mapPlace.lng),
                destinationDesciption: state.mapPlace.display));
          }
          return;
        }

        if (state is BookingGetDirectionSuccess) {
          Navigator.pushNamedAndRemoveUntil(context, Paths.completeBooking,
              (route) => route.settings.name == Paths.main);
        }
      },
      buildWhen: (previous, current) =>
          current is BookingLoadingLocations ||
          current is BookingLoadLocationsSuccess ||
          current is BookingLoadError,
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Form(
              child: Stack(
                children: [
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    top: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 10),
                              const InkWell(
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(width: 30),
                              Expanded(
                                  child: SizedBox(
                                      height: 45,
                                      child: LocationField(
                                          isPickup: true,
                                          isSelected: currentSelection ==
                                              SelectLocation.pickupLocation,
                                          textEditingController:
                                              _pickupLocationController))),
                              const SizedBox(width: 30)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 70,
                              ),
                              Expanded(
                                  child: SizedBox(
                                      height: 45,
                                      child: LocationField(
                                          isPickup: false,
                                          isSelected: currentSelection ==
                                              SelectLocation.desLocation,
                                          textEditingController:
                                              _desLocationController))),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Địa điểm gợi ý",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grayTitle),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          if (state is BookingLoadingLocations) ...[
                            const ListLocationSkeleton()
                          ],
                          if (state is BookingLoadLocationsSuccess) ...{
                            state.result.isNotEmpty
                                ? Expanded(
                                    child: ListLocation(
                                        currentSelection: currentSelection,
                                        textEditingController:
                                            currentSelection ==
                                                    SelectLocation
                                                        .pickupLocation
                                                ? _pickupLocationController
                                                : _desLocationController,
                                        addresses: state.result))
                                : const Padding(
                                    padding: EdgeInsets.only(top: 200),
                                    child: Center(
                                      child: Text(
                                        "Không tìm thấy địa chỉ phù hợp",
                                        style: Styles.emptyListText,
                                      ),
                                    ),
                                  )
                          }
                        ]),
                  ),
                  Positioned(
                    bottom: 0,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          shape: const RoundedRectangleBorder(),
                          backgroundColor: AppColors.primaryGreen,
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      onPressed: () async {
                        context.read<BookingBloc>().add(
                            BookingEvent.locateOnMap(
                                selectLocation: currentSelection));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.map,
                            size: 24,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Chọn từ bản đồ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

enum SelectLocation { pickupLocation, desLocation }
