import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'parentt_state.dart';

class ParenttCubit extends Cubit<ParenttState> {
  static final ParenttCubit instance=ParenttCubit();
  ParenttCubit() : super(ParenttInitial()){
    loadLanguage();
  }
  Map<String,dynamic> local ={};
  Future<void> loadLanguage() async {
    String s=await rootBundle.loadString('assets/lang/en.json');
    local=json.decode(s);
    emit(ParenttInitial());
  }
}
