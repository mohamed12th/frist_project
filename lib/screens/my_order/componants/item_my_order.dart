import 'package:flutter/material.dart';

class ItemMyOrder extends StatelessWidget {
  const ItemMyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: 28),
      padding: EdgeInsetsDirectional.only(start: 17 , top: 20 , end: 15 , bottom: 16),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.16),
            blurStyle: BlurStyle.outer,
            blurRadius: 10
          ),

        ],

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Order #00000" , style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),
        SizedBox(height: 9,),
        Text("20 Dec 2022 3:00PM" , style: TextStyle(fontSize: 17 , color: Color(0xff787878)),),
        SizedBox(height: 9,),
        Text("LE 0.00" , style: TextStyle(fontSize: 17 , color: Colors.black , fontWeight: FontWeight.bold),),
        SizedBox(height: 32,),
        Align(
          alignment: AlignmentDirectional.centerEnd,
            child: Text("Delivered" ,style: TextStyle(fontSize: 16 ,fontWeight:FontWeight.bold , color: Colors.black),), ),

      ],),
    );
  }
}
