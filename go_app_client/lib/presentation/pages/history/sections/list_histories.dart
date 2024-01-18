import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/routes/routes.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/domain/entities/history.dart';
import 'package:go_app_client/presentation/bloc/history/history_bloc.dart';

class ListHistories extends StatefulWidget {
  const ListHistories({super.key});

  @override
  State<ListHistories> createState() => _ListHistoriesState();
}

class _ListHistoriesState extends State<ListHistories> {
  var histories = <History>[];
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    var state = BlocProvider.of<HistoryBloc>(context).state;
    if (state is HistoryLoadSuccess) {
      var mutableHistories = List<History>.from(state.histories);
      histories = mutableHistories;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) {
        if (state is HistoryLoadMoreSuccess) {
          setState(() {
            var mutableHistories = List<History>.from(state.histories);
            histories.addAll(mutableHistories);
          });
        }
      },
      builder: (context, state) {
        return ListView.builder(
            controller: controller
              ..addListener(() {
                if (controller.position.pixels ==
                    controller.position.maxScrollExtent) {
                  context
                      .read<HistoryBloc>()
                      .add(const HistoryEvent.loadMore());
                }
              }),
            scrollDirection: Axis.vertical,
            itemCount: state is HistoryLoadingMore
                ? histories.length + 1
                : histories.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (index < histories.length) {
                var history = histories[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Paths.historyDetail,
                        arguments: history.id);
                  },
                  child: Padding(
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
                                  Utils.bookingStatusToString(
                                      history.bookingStatus),
                                  style: TextStyle(
                                      color: history.bookingStatus ==
                                              BookingStatus.complete
                                          ? AppColors.primaryGreen
                                          : Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  child: Text(
                                    "Chuyến đi đến ${history.to}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      Utils.fromTimeStamp(
                                          timeStamp: history.createAt,
                                          format: "HH:mm dd/MM/yyyy"),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      Utils.formatCurrency(history.price),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
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
                  ),
                );
              } else {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryGreen,
                    ),
                  ),
                );
              }
            });
      },
    );
  }
}
