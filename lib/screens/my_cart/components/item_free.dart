import 'package:flutter/material.dart';

class ItemFree extends StatefulWidget {
  const ItemFree({Key? key}) : super(key: key);

  @override
  State<ItemFree> createState() => _ItemFreeState();
}

class _ItemFreeState extends State<ItemFree> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 110,
      width: 335,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 90,

                  decoration: BoxDecoration(
                    color: Color(0xff034C65),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("This Product full name", style: TextStyle(fontSize: 13),),
                      Text("Free",style: TextStyle(fontSize: 16,color: Color(0xff516E00)),)
                    ],),
                ),

              ],
            ),
          ),
          Divider(
            color: Color(0xff707070),
            indent: 100,
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(color: Colors.white),


    );
  }
}
