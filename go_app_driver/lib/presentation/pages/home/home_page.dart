import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/helpers/share_prefereces.dart';
import 'package:go_app_driver/helpers/toast.dart';
import 'package:go_app_driver/presentation/bloc/home/home_cubit.dart';

import 'package:go_app_driver/presentation/pages/home/setions/bottom_view_home.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VietmapController? _controller;
  late CameraPosition _initialCameraPosition;

  @override
  void initState() {
    super.initState();
    LatLng latLng = getCurrentLatLngFromSharedPrefs();
    _initialCameraPosition = CameraPosition(target: latLng, zoom: 15);
    context.read<HomeCubit>().onReload();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state ){
        if(state.driverInfo.status == DriverStatus.notActive){
           ToastHelper.showToast(
                message:
                    "Rất tiếc, tài khoản của bạn đã bị khóa");
          Navigator.pushNamedAndRemoveUntil(context, Paths.login, (route) => false);
        }
      },
      builder: (context, state) {
        var isFree = state.driverInfo.status == DriverStatus.free ||
            state.driverInfo.status == DriverStatus.onRide;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isFree
                        ? "Bạn đang ở trạng thái hoạt động"
                        : "Bật hoạt động để nhận cuốc xe",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (state is HomeReceivedBooking) {
                        ToastHelper.showToast(
                            message:
                                "Bạn thực hiện chuyến xe, không thể tắt trạng thái hoạt động!");
                        return;
                      }
                      context.read<HomeCubit>().onChangeDriverStatus();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        color: isFree
                            ? AppColors.primaryGreen
                            : Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: isFree ? 0 : 1,
                        ),
                      ),
                      child: Image(
                        color: isFree
                            ? Colors.white
                            : Colors.black.withOpacity(0.5),
                        image:
                            isFree ? AppImages.icPowerOn : AppImages.icPowerOff,
                        fit: BoxFit.cover,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                VietmapGL(
                    onMapCreated: (controller) {
                      setState(() {
                        _controller = controller;
                      });
                    },
                    initialCameraPosition: _initialCameraPosition,
                    styleString: dotenv.env['MAP_STYLE'] ?? "",
                    myLocationEnabled: true,
                    myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
                    minMaxZoomPreference: const MinMaxZoomPreference(7, 30)),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: InkWell(
                    onTap: () async {
                      Position locationData =
                          await Geolocator.getCurrentPosition();
                      _controller?.animateCamera(CameraUpdate.newLatLngZoom(
                          LatLng(locationData.latitude, locationData.longitude),
                          16));
                    
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      padding: const EdgeInsets.all(10),
                      child: const Image(
                        image: AppImages.icFocus,
                        fit: BoxFit.cover,
                        width: 35,
                      ),
                    ),
                  ),
                )
              ],
            )),
            const BottomViewHome()
          ],
        );
      },
    );
  }
}
