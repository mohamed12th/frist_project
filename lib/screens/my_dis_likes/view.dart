import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/my_dis_likes/component/dis_like_bottom_bar.dart';
import 'package:trannin_poject/screens/my_dis_likes/component/item_my_dis_like.dart';
import 'package:trannin_poject/shared/my_app_bar.dart';

class MuDisLikesScreen extends StatelessWidget {
  const MuDisLikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: " MY Dis Likes",bottom: MyDisLikeBottom(), ),

      body: GridView.builder(
          padding: EdgeInsets.only(top: 16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 167/238),
          itemBuilder: (context , index)=> ItemMyDisLike()),
    );
  }
}
