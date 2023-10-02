import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'splashscreen.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';


void main() async{
await Hive.initFlutter();
 var box = await Hive.openBox('mybox');
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({Key ? key}) : super(key : key);
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 home: splashscreen(),
 theme: ThemeData(primarySwatch: Colors.deepPurple),
 );
 }
}
