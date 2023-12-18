import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/extensions/enum_extension.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';

class BookingDetailDriverSection extends StatelessWidget {
  const BookingDetailDriverSection({super.key});

  @override
  Widget build(BuildContext context) {
    var driverInfo = BlocProvider.of<BookingBloc>(context).state.driverInfo;
    return Material(
      elevation: 2,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child:  Text(
                "Tài xế",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Paths.driverInfo);
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 15
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          Image.network(driverInfo?.avtUrl ?? "").image,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            driverInfo?.fulllName ?? "",
                            style: Styles.titleCardText,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            driverInfo?.vehicleType.toName() ?? "XE MÁY",
                            style: Styles.primaryCardText,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          driverInfo?.licensePlate ?? "",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_right_outlined, size: 50,)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
