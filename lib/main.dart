import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/question_model.dart';
import './screens/home_screen.dart';
import './models/db_connect.dart';

void main(){
  
  var db = Dbconnect();

  //db.addQuestion(
  //  Question(id: '20', title: 'What is 2 x 100 ?', 
  //  options: {'100' : false , '200' : true, '300' : false , '500' : false })
  //);

  db.fetchQuestion();

  //the run app method
  runApp(
    const MyApp(),
  );
}

//CREATE THE MYAPP WIDGET
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      //remove the debug banner
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}