part of 'main_bloc.dart';


abstract class MainState {
  final int tabIndex;

  const MainState({required this.tabIndex});
}

final class MainInitial extends MainState {
  const MainInitial({required super.tabIndex});

}
