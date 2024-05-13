import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';
import 'package:newtask/features/dashboard/modules/entity/user_model.dart';
import 'package:newtask/features/dashboard/modules/users/model/firebase_data.dart';
import 'package:newtask/features/dashboard/modules/users/model/local_db_data.dart';


part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserLoading()) {
    init();
  }

  List<UserModel> users = [];
  Future<void> init() async {
    emit(UserLoading());
    final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile) || 
        connectivityResult.contains(ConnectivityResult.wifi))
        {
          users = await FirebaseRepo.instance.fetch();
        }
        else
        {
          users = await(await DatabaseRepo.instance).fetchUser();
        }
    // users = await (await DatabaseRepo.instance).fetch();
    if (users.isEmpty) {
      emit(UserEmpty());
    } else {
      emit(UserLoaded());
    }
  }
}
