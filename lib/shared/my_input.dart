import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  final String title ;
  final bool isRequired , isPassword ;
  final double marginBottom ;
  const MyInput({Key? key, required this.title,  this.isRequired = true,  this.isPassword =false, this.marginBottom = 25}) : super(key: key);

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: widget.marginBottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${widget.title}${widget.isRequired?"*":""}",style: TextStyle(fontSize: 15 , color: Color(0xff353636)),),
          SizedBox(height: 6,),
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: TextFormField(
              obscureText: widget.isPassword && isHidden,

              style: TextStyle(fontSize:17 , color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,

                fillColor: Color(0xffEBEBEB),
                suffixIcon: widget.isPassword
                    ? InkWell(
                  onTap: (){
                    isHidden = !isHidden ;
                    setState(() {

                    });
                  },
                      child: Icon(isHidden ?
                      Icons.visibility_off
                          : Icons.visibility),
                    )
                    : null,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
