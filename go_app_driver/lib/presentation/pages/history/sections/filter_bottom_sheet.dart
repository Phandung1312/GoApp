import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/presentation/bloc/history/history_bloc.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  void initState() {
    super.initState();
    var filter = BlocProvider.of<HistoryBloc>(context).filter;
    currentStatus = filter.status ?? "";
    currentSortField = filter.sortField ?? "";
    currentSortType = filter.sortType ?? "";
  }

  String currentStatus = "";
  String currentSortField = "";
  String currentSortType = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Nâng cao",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                "Trạng thái đơn",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        RadioListTile(
            contentPadding: EdgeInsets.zero,
            activeColor: AppColors.primaryGreen,
            value: "COMPLETE",
            title: Text("Đã xong",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: currentStatus == "COMPLETE"
                        ? AppColors.primaryGreen
                        : Colors.black)),
            groupValue: currentStatus,
            onChanged: (value) {
              setState(() {
                currentStatus = value ?? "";
              });
            }),
        RadioListTile(
            contentPadding: EdgeInsets.zero,
            activeColor: Colors.red,
            value: "CANCELLED",
            title: Text(
              "Đã hủy",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color:
                      currentStatus == "CANCELLED" ? Colors.red : Colors.black),
            ),
            groupValue: currentStatus,
            onChanged: (value) {
              setState(() {
                currentStatus = value ?? "";
              });
            }),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                "Lọc theo",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        RadioListTile(
            contentPadding: EdgeInsets.zero,
            activeColor: Colors.black,
            value: "createAt",
            title: const Text("Ngày giờ",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            groupValue: currentSortField,
            onChanged: (value) {
              setState(() {
                currentSortField = value ?? "";
              });
            }),
        RadioListTile(
            contentPadding: EdgeInsets.zero,
            activeColor: Colors.black,
            value: "amount",
            title: const Text(
              "Số tiền",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            groupValue: currentSortField,
            onChanged: (value) {
              setState(() {
                currentSortField = value ?? "";
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text(
                "Sắp xếp",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 100,
                child: RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    activeColor: Colors.black,
                    value: "asc",
                    title: const Text("Tăng",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        )),
                    groupValue: currentSortType,
                    onChanged: (value) {
                      setState(() {
                        currentSortType = value ?? "";
                      });
                    }),
              ),
              SizedBox(
                width: 100,
                child: RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    activeColor: Colors.black,
                    value: "desc",
                    title: const Text(
                      "Giảm",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    groupValue: currentSortType,
                    onChanged: (value) {
                      setState(() {
                        currentSortType = value ?? "";
                      });
                    }),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            context.read<HistoryBloc>().filter = context
                .read<HistoryBloc>()
                .filter
                .copyWith(
                    status: currentStatus.isNotEmpty ? currentStatus : null,
                    sortField: currentSortField,
                    sortType: currentSortType);
            context.read<HistoryBloc>().add(const HistoryEvent.loadAll());
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Center(
              child: Text("Áp dụng",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        )
      ]),
    );
  }
}
