import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/core/methood_help.dart';
import 'package:trannin_poject/screens/counter/cache_helper.dart';
import 'package:trannin_poject/screens/my_cart/view.dart';

import 'controlar.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 57,end: 7),
                      child: Text("Skip",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),))),
              SizedBox(height: 154,),
              SizedBox(
                height: 206,width:309 ,
                child: PageView(
                  onPageChanged: (value) {
                    controller.currentpage = value;
                    print("on page ${controller.currentpage}");
                    setState(() {

                    });
                  },
                  children: List.generate(controller.pages.length, (index) => Image.asset(controller.pages[index].image,height: 206,width:309 ,), ),
                ),
              ),

              SizedBox(height: 11,),
              Text(controller.pages[controller.currentpage].title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFF2F1F2B)),),
              SizedBox(height: 11,),
              Text(controller.pages[controller.currentpage].description,
                textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Color(0xFF7B7B7B)),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(controller.pages.length, (index) => Container(
                    height: 9,
                    width: index == controller.currentpage?34:9,
                    margin: EdgeInsetsDirectional.only(end: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(index==controller.currentpage? 0xFFE14B34 :0xFFC9C9C9),
                    ),
                  ))
                  ,),

              ),
              SizedBox(height : 8),
              ElevatedButton(onPressed: (){
                CachHelper.SaveIfFristTime();
                navgigateTo(context : context, page:MyCartScreen() , withHistor: true );

              },style: ElevatedButton.styleFrom(
                fixedSize: Size(264, 44),
                primary: Colors.black,
              ),
                  child: Text(controller.currentpage==2?"Get started":"Next",style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),)),
              SizedBox(height: 133,),
            ],
          ),
        ),
      ),

    );
  }
}
