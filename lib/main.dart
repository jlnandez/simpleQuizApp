import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main(){
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