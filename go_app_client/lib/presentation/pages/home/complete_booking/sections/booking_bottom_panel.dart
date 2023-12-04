import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/sections/driver_info_card.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/sections/payment_card.dart';
import 'package:go_app_client/presentation/pages/home/complete_booking/sections/route_price_item.dart';

class BookingBottomPanel extends StatefulWidget {
  const BookingBottomPanel({super.key});

  @override
  State<BookingBottomPanel> createState() => _BookingBottomPanelState();
}

class _BookingBottomPanelState extends State<BookingBottomPanel> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      buildWhen: (previous, current) =>
          current is BookingGetDirectionSuccess ||
          current is BookingVisiblePayment ||
          current is BookingLoadingDriver,
      builder: (context, state) {
        if (state is BookingGetDirectionSuccess) {
          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              RoutePriceItem(
                vehicleType: VehicleType.motorcycle,
                description: "Xe tay ga",
                price:
                    state.bookingPrices?[VehicleType.motorcycle]?.toInt() ?? 0,
                isSelected: state.mapRoutingParams!.vehicleType ==
                    VehicleType.motorcycle,
              ),
              RoutePriceItem(
                  vehicleType: VehicleType.car,
                  description: "Xe 4 chỗ",
                  price: state.bookingPrices?[VehicleType.car]?.toInt() ?? 0,
                  isSelected:
                      state.mapRoutingParams!.vehicleType == VehicleType.car),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: AppColors.primaryGreen,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      context
                          .read<BookingBloc>()
                          .add(const BookingEvent.goToPayment());
                    },
                    child: const Text(
                      "Đặt xe",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          );
        }
        if (state is BookingVisiblePayment) {
          return PaymentCard(
            price: state.bookingPrices?[state.mapRoutingParams!.vehicleType]
                    ?.toInt() ??
                0,
          );
        }
        if (state is BookingLoadingDriver) {
          return DriverInfoCard();
        }
        return Container(
          child: Text("HDIHSIHIDHIDSHSIDHISD"),
        );
      },
    );
  }
}
