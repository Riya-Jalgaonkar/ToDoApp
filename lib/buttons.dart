import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
 final String text;
 VoidCallback onPressed;
 buttons({
 super.key,
 required this.text,
 required this.onPressed
 });
 @override
 Widget build(BuildContext context) {
 return MaterialButton(
 onPressed: onPressed,
 color: Colors.orange[400],
 child: Text(text, style: TextStyle(color: Colors.black),),
 );
 }
}
