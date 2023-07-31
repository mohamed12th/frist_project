import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/loginn/state.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super (LoginStates());

  login({required String email , required String password}){
    Dio().post("path");
  }

}