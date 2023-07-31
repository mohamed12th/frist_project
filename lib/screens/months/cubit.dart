import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/months/states.dart';

class MonthsCubit extends Cubit<MonthsStates>
{
  String monthName = "";
  final numberControler = TextEditingController();

  MonthsCubit() : super(MonthsInitialState());
  void getMonthNamer()
  {
    int num = int.parse(numberControler.text);
    List<String>monthsNames = ["January","February","March","April","May","June","July","August","September","October","November","December"];
    monthName = monthsNames[num-1];
    emit(GetMonthsNameState());

  }
}