import 'package:flutter/material.dart';

class ItemCart extends StatefulWidget {
  const ItemCart({Key? key}) : super(key: key);

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return   Container(
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
                      Text("This Product full name"),
                      Text("\$29.00")
                    ],),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/icons/delet.png",height: 15,width: 12,fit: BoxFit.fill,),
                    Spacer(),
                    Row(children: [
                      GestureDetector(
                        onTap:(){
                          if(count>1){
                            count--;
                            setState(() {

                            });
                          }

                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Color(0xffE6E6E6).withOpacity(.20),
                          child: Icon(Icons.remove),

                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("$count",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(width: 11,),
                      GestureDetector(
                        onTap: (){
                          count++;
                          setState(() {

                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Color(0xffE6E6E6).withOpacity(.20),
                          child: Icon(Icons.add),
                        ),
                      )
                    ],),

                  ],),
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

