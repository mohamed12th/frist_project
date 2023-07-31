import 'package:flutter/material.dart';
import 'package:trannin_poject/shared/my_input.dart';

class RegesterScreen extends StatelessWidget {
  const RegesterScreen({Key? key}) : super(key: key);

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
            Text("CREATE\nA NEW ACCOUNT" ,style: TextStyle(fontSize:28 , fontWeight: FontWeight.bold),),
            SizedBox(height: 36,),
            MyInput(
              title:"Full name" ,

            ),
            MyInput(
              title:"Email address" ,

            ),
            MyInput(
              title:"password" ,
              isPassword: true,

            ),
            SizedBox(height: 119,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 63-25),
              child: ElevatedButton(onPressed: (){}, child: Text("CREATE ACOUNT" , style: TextStyle(color: Color(0xffF5F7F9), fontSize: 17),)),
            ),
            SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?" , style: TextStyle(fontSize: 17 , color: Color(0xff090000)),),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Sign in")),

              ],
            ),
            SizedBox(height: 120,),

          ],
        ),
      ),
    );
  }
}
