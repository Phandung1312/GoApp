import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/sections/route_price_card.dart';

class BookingBottomCard extends StatefulWidget {
  const BookingBottomCard({super.key});

  @override
  State<BookingBottomCard> createState() => _BookingBottomCardState();
}

class _BookingBottomCardState extends State<BookingBottomCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return state is BookingGetDirectionSuccess
            ? Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                        top: 50,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: AppColors.whiteShadow,
                        )),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Card(
                            elevation: 2,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 10),
                                    const Image(
                                        image: AppImages.icGreenDot,
                                        height: 10,
                                        fit: BoxFit.cover),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                          state.mapRoutingParams
                                                  ?.pickupDescription ??
                                              "Lỗi hiển thị địa chỉ",
                                          style: Styles.primaryCardText),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  height: 1,
                                  color: AppColors.primaryGreen,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 10),
                                    const Image(
                                        image: AppImages.icRedDot,
                                        height: 12,
                                        fit: BoxFit.cover),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                          state.mapRoutingParams
                                                  ?.destinationDescription ??
                                              "Lỗi hiển thị địa chỉ",
                                          style: Styles.primaryCardText),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const RoutePriceCard(
                            vehicleType: VehicleType.motorcycle,
                            description: "Xe tay ga",
                            price: 30000),
                        const RoutePriceCard(
                            vehicleType: VehicleType.car,
                            description: "Xe 4 chỗ",
                            price: 50000),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: AppColors.primaryGreen,
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {},
                              child: const Text("Đặt xe"),
                            ),
                          ),
                        )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            : Container();
      },
    );
  }
}
