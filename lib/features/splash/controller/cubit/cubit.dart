import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/features/splash/controller/cubit/states.dart';

final userType = [Doctor, Reseption, Nurse, AnalyzeEmployee, Manager, HR];

class UserCubit extends Cubit<UserState> {
  UserCubit(super.initialState);
  chooseUser() {}
}
