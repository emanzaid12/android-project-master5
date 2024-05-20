import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newtask/core2/cubit/parent_cubit.dart';

extension MyTheme on BuildContext {}

ThemeData get getTheme => Theme.of(this);

extension MyLocalization on String {
  String get tr => ParentCubit().instance.local[this] ?? this.toUpperCase();
}
