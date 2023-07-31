import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/counter/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/counter/cubit.dart';
import 'package:trannin_poject/screens/counter/state.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create : (context) =>CounterCubit(),
      child: Builder(
        builder: (context) { CounterCubit cubit = BlocProvider.of(context);
           return Scaffold(
            body: SafeArea(
                child:SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      FloatingActionButton(onPressed: (){
                        cubit.plus();
                      },child: Icon(Icons.add),mini: true,),
                      SizedBox(width: 10,),
                      BlocBuilder <CounterCubit , CounterStates>(
                        builder: (context,state){
                          return Text("${cubit.count}",
                            style: TextStyle(fontSize: 30),);
                        },),
                      SizedBox(width: 10,),
                      FloatingActionButton(onPressed: (){
                        cubit.minus();

                      },child: Icon(Icons.remove),mini: true,)
                    ],)
                  ],),
                )),
          );
        }
      ),
    );
  }
}
