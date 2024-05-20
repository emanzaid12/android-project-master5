import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:newtask/core2/cubit/parentt_cubit.dart';

extension MyTheme on BuildContext {
ThemeData get getTheme => Theme.of(this);
}

//ThemeData get getTheme => Theme.of("");

extension MyLocalization on String {
  String get tr => ParenttCubit.instance.local[this] ?? toUpperCase();
}
