import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

part 'parentt_state.dart';

class ParenttCubit extends Cubit<ParenttState> {
  static final ParenttCubit instance = ParenttCubit();
  ThemeMode themeMode = ThemeMode.dark;
  String lang = 'ar';
  Map<String, dynamic> local = {};

  ParenttCubit() : super(ParenttInitial()) {
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    themeMode = (prefs.getBool('isDarkMode') ?? true)
        ? ThemeMode.dark
        : ThemeMode.light;
    lang = prefs.getString('lang') ?? 'ar';
    await loadLanguage();
    emit(ParenttInitial());
  }

  Future<void> _savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', themeMode == ThemeMode.dark);
    prefs.setString('lang', lang);
  }

  Future<void> loadLanguage() async {
    String s = await rootBundle.loadString('assets/lang/$lang.json');
    local = json.decode(s);
    emit(ParenttInitial());
  }

  void changMode() {
    themeMode = themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    _savePreferences();
    emit(ParenttInitial());
  }

  void changLang() {
    lang = lang == 'ar' ? 'en' : 'ar';
    loadLanguage();
    _savePreferences();
    emit(ParenttInitial());
  }
}
