import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/home/input_location/input_location_page.dart';

class LocationField extends StatefulWidget {
  final bool isSelected;
  final bool isPickup;
  final TextEditingController textEditingController;
  const LocationField(
      {super.key,
      required this.isPickup,
      required this.isSelected,
      required this.textEditingController});

  @override
  State<LocationField> createState() => _LocationFieldState();
}

class _LocationFieldState extends State<LocationField> {
  Timer? searchOnStoppedTyping;
  String query = "";

  _onChangedHandler(value){
    if(searchOnStoppedTyping != null){
      setState(() {
        searchOnStoppedTyping?.cancel();
      });
    }
    setState(() => searchOnStoppedTyping = Timer(const Duration(milliseconds:  200), () => _searchHandler(value)));
  }
  _searchHandler(String value) async{
    if(value.isNotEmpty){
      context.read<BookingBloc>().add(BookingEvent.searchAddressFromText(query: value));
    }
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      onTap: () {
        InputLocationPage.of(context)?.currentSelectionState = widget.isPickup
            ? SelectLocation.pickupLocation
            : SelectLocation.desLocation;
      },
      onChanged: _onChangedHandler,
      maxLines: 1,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          filled: widget.isSelected ? true : false,
          fillColor: AppColors.backgroundInputLocation,
          hintText: widget.isPickup ? 'Vị trí hiện tại' : 'Điểm đến',
          prefixIcon: const Icon(Icons.location_on_sharp),
          prefixIconColor: widget.isPickup ? Colors.blue : Colors.red),
    );
  }
}
