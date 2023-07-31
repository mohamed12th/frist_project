import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/core/input_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
bool secure = true ;
final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key : formkey,
        child: Column(
          children: [
            TextFormField(
              validator: InputValidator.emailValidator,
              decoration: InputDecoration(
                labelText: "Enter Your Email"
              ),
            ),
            TextFormField(
              validator:InputValidator.passwordValidator,

              obscureText: secure,
              decoration: InputDecoration(
                labelText: "Enter Your password",
                suffixIcon: GestureDetector(onTap: (){
                  secure=!secure;
                  setState(() {

                  });
                }, child: Icon(secure?Icons.visibility_off:Icons.visibility))
              ),
            ),
            ElevatedButton(onPressed: (){
                  if (formkey.currentState!.validate()) {

                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Data Valid")),
        );
      }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
