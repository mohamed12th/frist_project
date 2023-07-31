import 'package:flutter/material.dart';
import 'package:trannin_poject/screens/counter/cache_helper.dart';

class SaveTextScreen extends StatefulWidget {
  const SaveTextScreen({Key? key}) : super(key: key);

  @override
  State<SaveTextScreen> createState() => _SaveTextScreenState();
}

class _SaveTextScreenState extends State<SaveTextScreen> {
  final nameController = TextEditingController(text: CachHelper.getWoed());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextFormField(
          controller: nameController ,
        ),
        ElevatedButton(onPressed: (){
          CachHelper.SaveWord(nameController.text);
        }, child: Text("Save"))
      ],),
    );
  }
}
