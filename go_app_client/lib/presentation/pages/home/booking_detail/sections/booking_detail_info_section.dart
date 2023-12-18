import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/booking.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/extensions/enum_extension.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';

class BookingDetailInfoSection extends StatefulWidget {
  const BookingDetailInfoSection({super.key});
  @override
  State<BookingDetailInfoSection> createState() =>
      _BookingDetailInfoSectionState();
}

class _BookingDetailInfoSectionState extends State<BookingDetailInfoSection> {
  late Booking? booking;
  late DriverInfo? driverInfo;
  @override
  void initState() {
    super.initState();
    booking = BlocProvider.of<BookingBloc>(context).state.booking;
    driverInfo = BlocProvider.of<BookingBloc>(context).state.driverInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AppImages.icGreenDot,
                        color: Colors.blue,
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Điểm đón",
                              style:
                                   TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              booking?.pickUpAddress ?? "",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AppImages.icRedDot,
                        width: 20,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Điểm đến",
                              style:
                                   TextStyle(color: Colors.red, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              booking?.dropOffAddress ?? "",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.withOpacity(0.2)),
                        child: Text(booking?.vehicleType.toName() ?? ""),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.withOpacity(0.2)),
                        child: Text("VND "
                            "${Utils.formatCurrency(booking?.amount.toInt() ?? 0)}"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.withOpacity(0.2)),
                        child: Text(booking?.paymentMethod ?? "VnPay"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}