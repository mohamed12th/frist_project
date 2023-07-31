import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class MyDisLikeBottom extends StatelessWidget implements PreferredSizeWidget {
  const MyDisLikeBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6,
        child: TabBar(
          isScrollable: true,
         padding: EdgeInsets.symmetric(horizontal: 20),

         unselectedLabelColor: Colors.black,
         indicator: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(6),
         ),
         tabs: [
     Tab(text: "All",),
     Tab(text: "One",),
     Tab(text: "Two",),
     Tab(text: "Three",),
     Tab(text: "Four",),
     Tab(text: "Five",),

    ],));
  }
 

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(32 );
}
