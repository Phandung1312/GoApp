import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/presentation/bloc/history/history_bloc.dart';
import 'package:go_app_driver/presentation/pages/history/sections/filter_bottom_sheet.dart';
import 'package:go_app_driver/presentation/pages/history/sections/list_histories.dart';
import 'package:go_app_driver/presentation/pages/history/sections/list_histories_skeletion.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    super.initState();
    context.read<HistoryBloc>().add(const HistoryEvent.loadAll());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      buildWhen: (previous, current) =>
          current is HistoryLoading || current is HistoryLoadSuccess,
      builder: (context, state) {
        return Column(
          children: [
            const MainToolBar(
              title: "Hoạt động",
              isBack: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {
                      _displayBottomSheet(context);
                    },
                    child: const Image(
                      image: AppImages.icFilter,
                      width: 30,
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: state.maybeWhen(
                    loading: () => const ListHistoriesSkeleton(),
                    loadSuccess: (data) => const ListHistories(),
                    orElse: () => Container())),
            const SizedBox(
              height: 20,
            )
          ],
        );
      },
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) => const FilterBottomSheet());
  }

  @override
  void dispose() {
    context.read<HistoryBloc>().close();
    super.dispose();
  }
}
