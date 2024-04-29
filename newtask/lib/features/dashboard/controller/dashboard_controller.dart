import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/features/dashboard/controller/dashboard_state.dart';

class dashboardController extends Cubit<dashboardState> {
  dashboardController() : super(dashboardChangeState());

  PageController pageController = PageController();

  int selectedTapIndex = 0;
  final PageController pageController0 = PageController();

  void onChangeTabIndex(int index)
  {
    selectedTapIndex = index;
    pageController0.jumpToPage(selectedTapIndex);
    emit(dashboardChangeState());
  }
}
