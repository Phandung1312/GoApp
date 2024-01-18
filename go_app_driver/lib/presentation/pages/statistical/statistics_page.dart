import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/styles.dart';
import 'package:go_app_driver/core/utils/utils.dart';
import 'package:go_app_driver/domain/usecases/statistics/get_statistics_usecase.dart';
import 'package:go_app_driver/presentation/bloc/statistics/statistics_cubit.dart';
import 'package:go_app_driver/presentation/pages/statistical/sections/statistics_skeleton.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';
import 'package:intl/intl.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  String rangeTime = "";
  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    DateTime firstDayOfMonth = DateTime(now.year, now.month, 1);
    var startDate = DateFormat('yyyy-MM-dd').format(firstDayOfMonth);
    var currentDate = DateFormat('yyyy-MM-dd').format(now);
    context
        .read<StatisticsCubit>()
        .onLoad(DateFilter(from: startDate, to: currentDate));
    setState(() {
      rangeTime = "$startDate - $currentDate";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainToolBar(title: "Thống kê", isBack: false),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: AppColors.primaryGreen,
              )),
          child: GestureDetector(
            onTap: () async {
              final results = await showCalendarDatePicker2Dialog(
                context: context,
                config: CalendarDatePicker2WithActionButtonsConfig(
                  calendarType: CalendarDatePicker2Type.range,
                ),
                dialogSize: Size(MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.width * 0.8),
                value: [],
                borderRadius: BorderRadius.circular(15),
              );
              var startDate = DateFormat('yyyy-MM-dd').format(results!.first!);
              var endDate = DateFormat('yyyy-MM-dd').format(results.last!);
              // ignore: use_build_context_synchronously
              context
                  .read<StatisticsCubit>()
                  .onLoad(DateFilter(from: startDate, to: endDate));
              setState(() {
                rangeTime = "$startDate - $endDate";
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.primaryGreen,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      rangeTime,
                      style: const TextStyle(
                        color: AppColors.primaryGreen,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _buildInfoBody()
      ],
    );
  }

  Widget _buildInfoBody() {
    return BlocBuilder<StatisticsCubit, StatisticsState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const StatisticsSkeleton(),
            loadSuccess: (statistics) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tổng số đơn nhận",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.total.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Số đơn đã hoàn thành",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.completed.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Số đơn bị hủy",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.cancelled.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    if (statistics.cancelled != 0) ...[
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Hủy do khách hàng",
                            style: Styles.titleCardText,
                          ),
                          Text(
                            statistics.cancelCustomer.toString(),
                            style: const TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Hủy do tài xế",
                            style: Styles.titleCardText,
                          ),
                          Text(
                            statistics.cancelDriver.toString(),
                            style: const TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ],
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tổng tiền",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          "${Utils.formatCurrency(statistics.totalAmount.toInt())}đ",
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Số tiền nhận được",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          "${Utils.formatCurrency(statistics.receiveAmount.toInt())}đ",
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Đánh giá 5 sao",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.rating5.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Đánh giá 4 sao",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.rating4.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Đánh giá 3 sao",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.rating3.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Đánh giá 2 sao",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.rating2.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Đánh giá 1 sao",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.rating1.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Đánh giá 0 sao",
                          style: Styles.titleCardText,
                        ),
                        Text(
                          statistics.rating0.toString(),
                          style: const TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ]),
                ),
            loadError: () => const Center(
                  child: Text("Đã có lỗi xảy ra, hãy thử lại"),
                ),
            orElse: () => Container());
      },
    );
  }
}
