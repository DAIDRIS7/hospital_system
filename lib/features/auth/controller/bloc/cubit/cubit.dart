import 'package:bloc/bloc.dart';
import 'package:hospital/features/auth/controller/bloc/cubit/states.dart';
import 'package:hospital/features/auth/controller/repository/repository.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(super.initialState);

  postLogIn() async {
    final logIn = AuthRepo().postLogIn();
    emit(logIn(Success()));
  }
}
