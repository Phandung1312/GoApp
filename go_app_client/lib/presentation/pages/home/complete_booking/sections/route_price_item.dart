import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';

class RoutePriceItem extends StatefulWidget {
  final VehicleType vehicleType;
  final String description;
  final int price;
  final bool isSelected;
  const RoutePriceItem(
      {super.key,
      required this.vehicleType,
      required this.description,
      required this.price,
      required this.isSelected});

  @override
  State<RoutePriceItem> createState() => _RoutePriceItemState();
}

class _RoutePriceItemState extends State<RoutePriceItem> {
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
      child: InkWell(
        onTap: (){
          context.read<BookingBloc>().add(BookingChangeRouteByVehicle(vehicleType: widget.vehicleType));
        },
        child: Card(
          color: widget.isSelected ? AppColors.itemCardSelected : Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: widget.isSelected
                ? const BorderSide(color: AppColors.borderGreen, width: 1)
                : BorderSide.none,
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
              Text("${Utils.formatCurrency(widget.price)}đ", style: Styles.titleCardText),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
