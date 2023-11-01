import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/domain/entities/map_autocomplete.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';
import 'package:go_app_client/presentation/pages/home/input_location/input_location_page.dart';

class ListLocation extends StatelessWidget {
  const ListLocation(
      {super.key,
      required this.currentSelection,
      required this.textEditingController,
      required this.addresses});
  final SelectLocation currentSelection;
  final TextEditingController textEditingController;
  final List<MapAutoComplete> addresses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: addresses.length > 5 ? 5 : addresses.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                textEditingController.text = addresses[index].address;
                FocusScope.of(context).unfocus();
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<BookingBloc>().add(
                            BookingEvent.locateOnMap(
                                selectLocation: currentSelection));
                        Navigator.pushNamed(context, Paths.pickLocation);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: AppColors.primaryGreen),
                      child: const Center(
                        child: Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(addresses[index].name,
                            style: Styles.titleCardText),
                        const SizedBox(height: 10),
                        Text(addresses[index].display,
                            style: Styles.primaryCardText),
                      ]))
                ],
              ),
            )));
  }
}
