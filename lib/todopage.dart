import 'package:flutter/material.dart';
import 'todotile.dart';
import 'dialogbox.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'database.dart';
import 'package:hive/hive.dart';


class First extends StatefulWidget{
 const First({Key ? key}) : super(key : key);
 @override
 State<First> createState() => _FirstState();
}
class _FirstState extends State<First> {
 final _myBox = Hive.box('mybox');
 todobase db = todobase();
 @override
 void initState(){
 if(_myBox.get("TODOLIST") == null){
 db.createinitialstate();
 }
 else{
 db.loaddata();
 }
 super.initState();
 }

 //text controller
 final _controller = TextEditingController();
 //list of todo tasks
 // checkbox is tapped
 void checkboxchanged(bool? value,int index){
 setState(() {
 db.todolist[index][1] = !db.todolist[index][1];
 });
 db.updata();
 }
 void saveNewTask() {
 setState(() {
 db.todolist.add([_controller.text,false]);
 _controller.clear();
 });
 Navigator.of(context).pop();
 db.updata();
 }
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }
 //delete the task tile
 void deletetask( int index){
 setState(() {
 db.todolist.removeAt(index);
 });
 db.updata();
 }
 @override
 Widget build(BuildContext context){
 return Scaffold(
 backgroundColor: Colors.orange[300],
 appBar: AppBar(
 backgroundColor: Colors.deepPurpleAccent,
 title: Text('TO DO',
 style: TextStyle(fontWeight: FontWeight.bold, color: 
Colors.white,
 fontSize: 30),),
 ),
 floatingActionButton: FloatingActionButton(
 backgroundColor: Colors.deepPurpleAccent,
 onPressed: createNewTask,
 child: Icon(Icons.add,),
 ),

 body: ListView.builder(
 scrollDirection: Axis.vertical,
 itemCount: db.todolist.length,
 itemBuilder:(context, index) {
 return todotile(
 Taskname: db.todolist[index][0],
 taskCompleted: db.todolist [index][1],
 onChanged: (value) => checkboxchanged(value, index),
 deletefunction: (context) => deletetask(index),
 );
 },
 ),
 );
 }
}