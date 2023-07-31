import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/postes/model.dart';

class ItemPost extends StatelessWidget {
  final Posts model ;
  const  ItemPost({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: [
         Image.network(model.url,errorBuilder: (context, error, stackTrace) => Image.network("https://th.bing.com/th/id/OIP.VmvGsAeUUoSx-vwGbUxUjQHaHa?pid=ImgDet&rs=1"),fit: BoxFit.fill,),
        Text(model.title),
  ],
      ),
    );
  }
}
