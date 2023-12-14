import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/domain/entities/driver_info.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/extensions/enum_extension.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/bloc/chat/chat/chat_cubit.dart';
import 'package:toast/toast.dart';

class DriverInfoCard extends StatefulWidget {
  const DriverInfoCard({super.key});

  @override
  State<DriverInfoCard> createState() => _DriverInfoCardState();
}

class _DriverInfoCardState extends State<DriverInfoCard> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
        listener: (context, state) {
          if (state is BookingStatusUpdated) {
            if (state.booking?.status == BookingStatus.complete) {
              Toast.show("Đã hoàn thành chuyến đi, hãy đánh giá cho tài xế.",
                  duration: Toast.lengthShort, gravity: Toast.bottom);
              // Navigator.pushNamedAndRemoveUntil(context, Paths.review, (route) => false);
              Navigator.pushNamed(context, Paths.review);
            }
          }
        },
        buildWhen: (previous, current) =>
            current is BookingFoundingDriver ||
            current is BookingLoadDriverSuccess ||
            current is BookingStatusUpdated,
        builder: (context, state) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: state is BookingFoundingDriver
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Image(
                            image: state.mapRoutingParams?.vehicleType ==
                                    VehicleType.motorcycle
                                ? AppImages.icMotorbike
                                : AppImages.icCar,
                            height: 30),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Đang tìm tài xế",
                          style: Styles.titleCardText,
                        )
                      ],
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Paths.driverInfo);
                            },
                            child: CircleAvatar(
                              backgroundImage:
                                  Image.network(state.driverInfo?.avtUrl ?? "")
                                      .image,
                              radius: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.driverInfo?.fulllName ?? "",
                                  style: Styles.titleCardText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  state.driverInfo?.vehicleType.toName() ??
                                      "XE MÁY",
                                  style: Styles.primaryCardText,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                state.driverInfo?.licensePlate ?? "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RatingBar.builder(
                              ignoreGestures: true,
                              itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 6,
                                  ),
                              itemSize: 30,
                              initialRating: state.driverInfo?.rating ?? 0,
                              allowHalfRating: true,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              direction: Axis.horizontal,
                              itemCount: 5,
                              minRating: 1,
                              onRatingUpdate: (rating) {}),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              " • " "${state.driverInfo?.rating}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Row(
                              children: [
                                Text(
                                  "Xem thêm",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.more_vert,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        state.booking?.status.toDriverStatus() ?? "null",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(height: 1, color: Colors.grey),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                context.read<ChatCubit>().loadAllMessage(
                                    state.driverInfo ?? const DriverInfo());
                                Navigator.pushNamed(context, Paths.chat);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: AppColors.grayLine),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image(
                                        image: AppImages.icDoubleChat,
                                        fit: BoxFit.cover,
                                        height: 30),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Chat với tài xế",
                                      style: Styles.primaryCardText,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black)),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                Icons.phone,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  )));
  }
}
