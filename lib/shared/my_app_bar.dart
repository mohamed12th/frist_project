import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key , required this.title , this.isFilterShown=true , this.bottom}) : super(key: key);
final String title;
final bool isFilterShown;
final PreferredSizeWidget? bottom ;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 68,
      bottom: bottom ,
      centerTitle: true,
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            "assets/icons/Arrow_Back.png",
            height: 18.61,
            width: 27.41,
          ),
        ),
      ),
      title: Text(title),
      actions: [
        if(isFilterShown)
         InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                "assets/icons/filter.png",
                height: 28.8,
                width: 23.13,
              ),
            ),
          ),
        
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(bottom!=null?104:74);
}
