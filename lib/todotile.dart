import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class todotile extends StatelessWidget {
 final String Taskname;
 final bool taskCompleted;
 Function(bool?) ? onChanged;
 Function(BuildContext) ? deletefunction;
 todotile({
 super.key,
 required this.Taskname,
 required this.taskCompleted,
 required this.onChanged,
 required this.deletefunction,
 });
 @override
 Widget build(BuildContext context) {
 return Padding(
 padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
 child: Slidable(
 endActionPane: ActionPane(
 motion: StretchMotion(),
 children: [
 SlidableAction(
 onPressed: deletefunction,
 icon: Icons.delete,
 backgroundColor: Colors.redAccent,
 borderRadius: BorderRadius.circular(12),
 ),],
 ),
 child: Container(
 padding: EdgeInsets.all(20),
 child: Row(
 children: [
 //checkbox
 Checkbox(value: taskCompleted, onChanged: onChanged,

 checkColor: Colors.deepPurpleAccent[400],
 activeColor: Colors.orange[200],),
 //text of the tile
 Text(Taskname,
 style: TextStyle(
 color: Colors.white,
fontSize: 22,
 decoration: taskCompleted
 ? TextDecoration.lineThrough
: TextDecoration.none),
 ),
 ],),
 decoration: BoxDecoration(
 color: Colors.purple[300],
 borderRadius: BorderRadius.circular(12),
 ),
 ),
 ),
 );
 }
}