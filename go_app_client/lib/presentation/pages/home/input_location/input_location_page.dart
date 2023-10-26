import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/home/input_location/sections/location_field.dart';

class InputLocationPage extends StatefulWidget {
  const InputLocationPage({super.key});

  @override
  State<InputLocationPage> createState() => _InputLocationPageState();

  static _InputLocationPageState? of(BuildContext context) =>
      context.findAncestorStateOfType<_InputLocationPageState>();
}

class _InputLocationPageState extends State<InputLocationPage> {
  final TextEditingController _pickupLocationController =
      TextEditingController();
  final TextEditingController _desLocationController = TextEditingController();
  SelectLocation currentSelection = SelectLocation.pickupLocation;

  set currentSelectionState(SelectLocation selectLocation){
    setState(() {
      currentSelection = selectLocation;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Form(
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
                                        _desLocationController)
                        )),
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
                    const SizedBox(height: 10,),
                    const LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)
                      ),
                      
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: double.infinity,
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
                  ]),
            ),
          ),
        );
      },
    );
  }
}

enum SelectLocation { pickupLocation, desLocation }
