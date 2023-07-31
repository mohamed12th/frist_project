import 'package:flutter/material.dart';

class DialogsScreen extends StatelessWidget {
  const DialogsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80,),
                ElevatedButton(
                    onPressed: (){
                  showDialog(context: context, builder:(context)=> AlertDialog(
                    title: Text("Close App"),
                    backgroundColor: Colors.blueGrey,
                    elevation: 0,
                    content: Text("Are You sure to close app"),
                    actions: [
                      ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("sure")),
                      ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("cancel"))
                    ],
                  ));
                }, child: Text("Show Alert Dailog")),
                ElevatedButton(
                    onPressed: (){
                      showDialog(context: context, builder:(context)=> SimpleDialog(
                        title: Text("Hallo") ,
                        children: [
                          Text("SimpleDialog"),
                        ],

                      ),);
                    }, child: Text("Show Simple Dailog")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
