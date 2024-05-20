import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'parent_state.dart';

class ParentCubit extends Cubit<ParentState> {
  static final ParentCubit instance=ParentCubit
  ParentCubit() : super(ParentInitial());
  Map<String, dynamic> local = {};
  String s =await  void loadString('assets/lang/ar.json');
  local= json.decode(s);
  
 
   emit(ParentInitial());
  
}
}
