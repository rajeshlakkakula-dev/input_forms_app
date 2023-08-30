import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyForm()
    );
  }
}

class MyForm extends StatefulWidget{


  @override
  State<MyForm> createState() => _MyFormState();

}

class _MyFormState extends State<MyForm> {

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Retrieve data"),
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Value'
              ),
              controller: myController,
            ),
          ),


        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  content: Text(myController.text),
                );
              }
              );

        },
        tooltip: 'show me the value',
        child: Icon(Icons.text_fields),

      ),

    );

  }

}


