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
      currentSelection = selectLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        state.whenOrNull(
          loadError: (failure) {
            String errorMessage = "";
            switch (failure) {
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
          },
        );
      },
      buildWhen: (previous, current) => current.maybeWhen(
          loadingLocations: () => true,
          loadLocationsSuccess: (result) => true,
          loadError: (failure) => true,
          orElse: () => false),
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
                          state.maybeWhen(
                              loadingLocations: () =>
                                  const ListLocationSkeleton(),
                              loadLocationsSuccess: (result) {
                                if (result.isNotEmpty) {
                                  return Expanded(
                                      child: ListLocation(
                                          currentSelection: currentSelection,
                                          textEditingController:
                                              currentSelection ==
                                                      SelectLocation
                                                          .pickupLocation
                                                  ? _pickupLocationController
                                                  : _desLocationController,
                                          addresses: result));
                                } else {
                                  return const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 200),
                                      child: Center(
                                        child: Text(
                                          "Không tìm thấy địa chỉ phù hợp",
                                          style: Styles.emptyListText,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                              orElse: () => Container()),
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
                      onPressed: () {
                        context.read<BookingBloc>().add(
                            BookingEvent.locateOnMap(
                                selectLocation: currentSelection));
                        Navigator.pushNamed(context, Paths.pickLocation);
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
                          Text("Chọn từ bản đồ"),
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
