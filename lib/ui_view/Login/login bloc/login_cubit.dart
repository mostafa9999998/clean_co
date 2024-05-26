import 'package:bloc/bloc.dart';
import 'package:clean_co/ui_view/Login/login%20bloc/login_state.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit():super(LoginStateInitial());
}