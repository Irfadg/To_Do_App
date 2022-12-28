


import 'package:flutter/cupertino.dart';

class DataModel extends ChangeNotifier{

   List<task> tasks=[
task(title: "buy a book"),
task(title: "study a tech"),
task(title: "coffiee"),
task(title: "run daily")

 ];
 void AddTaskIntoList(newTitle){
  final newData=task(title: newTitle);

  tasks.add(newData);
  notifyListeners();
}
}

class task{
   final String title;
  bool isDone;
  task({required this.title, this.isDone=false});
  void toggleDone(){
    isDone=!isDone;
  }




}