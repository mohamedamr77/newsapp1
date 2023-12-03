import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screen/HomeScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  //mohamed amr
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage() ,
    );
  }

}