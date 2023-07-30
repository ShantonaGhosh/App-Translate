import 'package:flutter/material.dart';
import 'package:translator/translator.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GoogleTranslator translator = GoogleTranslator();
  String text= 'Hello, How are you?';


  void translate(){
translator.translate(text, to: 'bn').then((output) {
  setState(() {
    text = output.toString();
  });
});

  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Language translate'),),
        body: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${text}'),
              SizedBox(height: 10.0,),
              ElevatedButton(onPressed: (){
              translate();

              }, child: Text('Translate'),)
            ],
          ),
        ),
    );
  }
}