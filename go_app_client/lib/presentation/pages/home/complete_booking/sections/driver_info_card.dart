import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';

class DriverInfoCard extends StatefulWidget {
  const DriverInfoCard({super.key});

  @override
  State<DriverInfoCard> createState() => _DriverInfoCardState();
}

class _DriverInfoCardState extends State<DriverInfoCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
        buildWhen: (previous, current) =>
            current is BookingLoadDriverSuccess ||
            current is BookingLoadingDriver,
        builder: (context, state) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: state is BookingLoadingDriver
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 20),
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
                            child: const CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nguyễn Văn A",
                                  style: Styles.titleCardText,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Honda AirBlade",
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
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                "43A-734.343",
                                style: TextStyle(
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
                              itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 7,
                                  ),
                              initialRating: 3.5,
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
                          const Text(
                            " • " + "3.9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
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
