import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/forget_password/view.dart';
import 'package:trannin_poject/screens/regester/view.dart';
import 'package:trannin_poject/shared/my_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38,),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
            SizedBox(height: 75,),
            Text("LOGIN TO\nMY ACCOUNT" ,style: TextStyle(fontSize:28 , fontWeight: FontWeight.bold),),


            MyInput(
              title:"Email address" ,
              

            ),
            MyInput(
              title:"password" ,
              isPassword: true,
              marginBottom: 12,

            ),
            InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(BuildContext context)=> ForgetPasswordScreen()));

                },
                child: Text("Forgot Password", style: TextStyle(fontSize: 14 , color: Colors.black),)),
            SizedBox(height: 119,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 63-25),
              child: ElevatedButton(onPressed: (){}, child: Text("NEXT" , style: TextStyle(color: Color(0xffF5F7F9), fontSize: 17),)),
            ),
            SizedBox(height: 14,),
            Row(

              children: [
                SizedBox(width: 74-25,),
                Text("New to app?" , style: TextStyle(fontSize: 17 , color: Color(0xff090000)),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> RegesterScreen()));
                }, child: Text("Sign up")),

              ],
            ),
            SizedBox(height: 120,),

          ],
        ),
      ),
    );
  }
}
