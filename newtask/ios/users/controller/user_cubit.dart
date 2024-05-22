import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../model/entity_model/user_model.dart';
import '../repo/user_api_repo.dart';

part 'user_state.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit() : super(ItemLoadingState());
  init();
  List<ItemModel> item = [];
  final ItemAPIRepo_repo = ItemAPIRepo();
  Future<void> init() async {
    emit(ItemLoadingState());
    item = await _repo.fetchUser();
    if (items.isEmpty) {
      emit(ItemEmptystate());
    } else {
      emit(ItemLoadedState());
    }
  }
}
