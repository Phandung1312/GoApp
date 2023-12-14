import 'package:flutter/material.dart';
import 'package:go_app_driver/config/images.dart';


class BookingDetailInfoSection extends StatefulWidget {
  const BookingDetailInfoSection({super.key});
  @override
  State<BookingDetailInfoSection> createState() =>
      _BookingDetailInfoSectionState();
}

class _BookingDetailInfoSectionState extends State<BookingDetailInfoSection> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: const Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AppImages.icGreenDot,
                color: Colors.blue,
                width: 20,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Đón khách Phan Dũng",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "259 Phạm Như Xương, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
           Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AppImages.icRedDot,
                width: 20,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Đến đích",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "289 Tôn Đức Thắng, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
