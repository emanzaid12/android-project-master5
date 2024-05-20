import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'parentt_state.dart';

class ParenttCubit extends Cubit<ParenttState> {
  static final ParenttCubit instance=ParenttCubit();
  ThemeMode themeMode=ThemeMode.dark;
  ParenttCubit() : super(ParenttInitial()){
    loadLanguage();
  }
  Map<String,dynamic> local ={};
  String lang='ar';
  Future<void> loadLanguage() async {
    String s=await rootBundle.loadString('assets/lang/$lang.json');
    local=json.decode(s);
    emit(ParenttInitial());
  }
  void  changMode(){
    if(themeMode==ThemeMode.dark){
      themeMode=ThemeMode.light;
    }
    else{
      themeMode=ThemeMode.dark;
    }
    emit(ParenttInitial());
  }
  void changLang() {
    if (lang == 'ar') {
     lang='en';
    } else {
     lang = 'ar';
    }
     loadLanguage();
    emit(ParenttInitial());
  }
}
