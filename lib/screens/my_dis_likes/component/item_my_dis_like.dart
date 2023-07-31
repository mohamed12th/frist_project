import 'package:flutter/material.dart';

class ItemMyDisLike extends StatefulWidget {
  const ItemMyDisLike({Key? key}) : super(key: key);

  @override
  State<ItemMyDisLike> createState() => _ItemMyDisLikeState();
}

class _ItemMyDisLikeState extends State<ItemMyDisLike> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 172,
          width: 167,
          child: Stack(children: [
            Container(
              height: 172,
              width: 167,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                    onPressed: () {
                      isFav =!isFav ;
                      setState(() {

                      });
                    }, icon: Icon( isFav?Icons.favorite:
                  Icons.favorite_border ,
                  color: isFav?Colors.red:Colors.black,)))
          ]),
        ),
        SizedBox(height: 6,),
        Text(
          "This product full",
          style: TextStyle(fontSize: 11, color: Color(0xff353636)),
        ),
        Text("name", style: TextStyle(fontSize: 11, color: Color(0xff353636))),
        SizedBox(
          height: 6,
        ),
        Text("EGP17.00", style: TextStyle(fontSize: 15, color: Colors.black)),
      ],
    );
  }
}
