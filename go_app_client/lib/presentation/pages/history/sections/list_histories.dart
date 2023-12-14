import 'package:flutter/material.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/history.dart';

class ListHistories extends StatelessWidget {
  final List<History> histories;
  const ListHistories({super.key, required this.histories});

  @override
  Widget build(BuildContext context) {  
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: histories.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var history = histories[index];
          return Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: SizedBox(
               width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: history.vehicleType == VehicleType.motorcycle
                        ? AppImages.icMotorbike
                        : AppImages.icCar,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Utils.bookingStatusToString(history.bookingStatus),
                          style: TextStyle(
                              color: history.bookingStatus == BookingStatus.complete
                                  ? AppColors.primaryGreen
                                  : Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: Text(
                            "Chuyến đi đến ${history.to}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          history.createAt,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        if (index != histories.length - 1) ...[
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            
                            color: AppColors.grayLine,
                            height: 1,
                          )
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          );
        });
  }
}
