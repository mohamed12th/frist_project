import 'package:flutter/material.dart';

import '../model.dart';

class ItemMovie extends StatelessWidget {
  final Movies model ;
  const ItemMovie({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(child: Image.network("https://image.tmdb.org/t/p/original${model.backdropPath}",fit: BoxFit.fill,)),
          Text(model.title),
        ],
      ),
    );
  }
}
