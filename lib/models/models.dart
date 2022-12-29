


import 'package:flutter/cupertino.dart';
import 'package:to_do_list_app/screens/taskscreen.dart';

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

void changeTaskState(task task){
  task.toggleDone();
  notifyListeners();
}

// void deleteTaskFromList(task task) async{
//   print("irfad");
//    await tasks.remove(task);
//   //notifyListeners();

// }
}

class task{
   final String title;
  bool isDone;
  task({required this.title, this.isDone=false});
  void toggleDone(){
    isDone=!isDone;
  }




}