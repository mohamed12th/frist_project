import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPrice extends StatelessWidget {
  final String title ,price ;

  final bool isBold ;

  const ItemPrice({Key? key, required this.title, required this.price, this.isBold = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [

          Text(title, style: TextStyle(fontSize:17 ,color: Colors.black,fontWeight: isBold?FontWeight.bold:null),),

          Text( price,style: TextStyle(fontSize: 17,color: Colors.black, fontWeight: isBold?FontWeight.bold:null),)
        ],
      ),
    );
  }
}
