//import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class todobase{
 final _myBox = Hive.box('mybox');
 List todolist = [];
 void createinitialstate(){
 todolist = [
 ["code", false],
 ["get grocery", false],
 ];
 }
 //load data
void loaddata() {
 todolist = _myBox.get("TODOLIST");
}
void updata(){
 _myBox.put("TODOLIST", todolist);
}
}
