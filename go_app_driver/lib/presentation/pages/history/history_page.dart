import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/presentation/bloc/history/history_bloc.dart';
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
}
