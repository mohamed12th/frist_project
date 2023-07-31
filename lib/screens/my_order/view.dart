import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/my_order/componants/item_my_order.dart';
import 'package:trannin_poject/shared/my_app_bar.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "My Order", isFilterShown: false,),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context , index ) => ItemMyOrder(), itemCount: 2,),
    );
  }
}
