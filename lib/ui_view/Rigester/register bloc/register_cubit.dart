import 'package:bloc/bloc.dart';
import 'package:clean_co/ui_view/Rigester/register%20bloc/register_State.dart';

class RegisterCubit extends Cubit<RegisterStates>{
  RegisterCubit():super(RegisterStateInitial());
}