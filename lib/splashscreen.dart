import 'dart:async';
import 'package:flutter/material.dart';
import 'todopage.dart';

class splashscreen extends StatefulWidget {
 const splashscreen({Key? key}) : super(key: key);
 @override
 State<splashscreen> createState() => _splashscreenState();
}
class _splashscreenState extends State<splashscreen>{
 @override
 void initState() {
 super.initState();
 Timer(
 Duration(seconds: 5), () {
 Navigator.pushReplacement(
 context, MaterialPageRoute(builder: (context) => First()));

 }
 );
 }
 Widget build(BuildContext context){
 return Scaffold(
 backgroundColor: Colors.orange[200],
 body:Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 Icon(
 Icons.check_box_outlined,
 size: 200,
 color: Colors.deepPurple[400],
 ),
 Container(
 padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
 child: Center(
 child: Text('THE TO DO APP', style: TextStyle(
 fontSize: 34,
 fontWeight: FontWeight.w700,
 color: Colors.deepPurple[400],
 ),
 ),
 ),
 ),
 ],),
 );
 }
}