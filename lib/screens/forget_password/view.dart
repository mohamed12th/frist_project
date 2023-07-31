import 'package:flutter/material.dart';
import 'package:trannin_poject/shared/my_input.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38,),
            IconButton(onPressed: (){
              Navigator.pop(context);

            }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
            SizedBox(height: 75,),
            Text("FORGET PASSWORD" ,style: TextStyle(fontSize:28 , fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("Please enter your email address, you will\nreceive a link to create a new password via" , style: TextStyle(fontSize: 15, color: Color(0xff353636)),),
            SizedBox(height: 36,),

            MyInput(
              title:"Email " ,
              isRequired: false,

            ),

            SizedBox(height: 150,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 63-25),
              child: ElevatedButton(onPressed: (){}, child: Text("SEND" , style: TextStyle(color: Color(0xffF5F7F9), fontSize: 17),)),
            ),
            SizedBox(height: 14,),

            SizedBox(height: 120,),

          ],
        ),
      ),
    );
  }
}
