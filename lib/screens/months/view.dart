import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/months/cubit.dart';
import 'package:trannin_poject/screens/months/states.dart';

class MonthsScreen extends StatelessWidget {
  const MonthsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MonthsCubit(),
    child: Builder(
      builder: (context) {
        MonthsCubit cubit = BlocProvider.of(context);
        return Scaffold(
          appBar: AppBar(title: Text("Month App")),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: cubit.numberControler,
                decoration: InputDecoration(labelText: "Enter Number"),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                cubit.getMonthNamer();
              }, child: Text("Get")),
              SizedBox(height: 15,),
              BlocBuilder<MonthsCubit,MonthsStates>(builder: (context ,state) =>Text(cubit.monthName)),

            ],
          ),
        );
      }
    )
    );
  }
}
