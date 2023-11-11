import 'package:flutter/material.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';

class RoutePriceCard extends StatefulWidget {
  final VehicleType vehicleType;
  final String description;
  final int price;
  const RoutePriceCard(
      {super.key,
      required this.vehicleType,
      required this.description,
      required this.price});

  @override
  State<RoutePriceCard> createState() => _RoutePriceCardState();
}

class _RoutePriceCardState extends State<RoutePriceCard> {
  bool isMotorcycle = true;
  @override
  void initState() {
    super.initState();
    isMotorcycle = widget.vehicleType == VehicleType.motorcycle;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image(
                  image: isMotorcycle ? AppImages.icMotorbike : AppImages.icCar,
                  height: 30),
            ),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(isMotorcycle ? "Xe máy" : "Ô tô",
                      style: Styles.titleCardText),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.description,
                    style: Styles.additionalCardText,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(widget.price.toString(), style: Styles.titleCardText),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
