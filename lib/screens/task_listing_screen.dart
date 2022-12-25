// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/constant.dart';
import 'package:to_do_list_app/models/models.dart';

class TaskBottom extends StatefulWidget{
 
final List<task> tasks;
TaskBottom(this.tasks);
  @override
  State<TaskBottom> createState() => _TaskBottomState();
}

class _TaskBottomState extends State<TaskBottom> {


  @override
  Widget build(BuildContext context) {
  
  //callback
    //    void toggleState (bool? cheackBoxState){
    //   setState(() {
    //     isCheckedState=cheackBoxState!;
    //     print(isCheckedState);
    //   });     
    // }
    return   ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskTile(isCheckedState:widget. tasks[index].isDone, taskTitle: widget.tasks[index].title,
          checkCallBack:  (cheackBoxState){
      setState(() {
       widget. tasks[index].toggleDone();
     
      });     
     }
     );
        });
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key, required this.isCheckedState, required this.taskTitle, required this.checkCallBack,
    
  
  }) : super(key: key);

  
  final  bool isCheckedState;
  final String taskTitle;
  final  checkCallBack;

  @override
  Widget build(BuildContext context) {
      double hght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: hght * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kMainAppClr,
          ),
          child: Center(
            child: ListTile(
                title: Text(
                  taskTitle,
                  style: GoogleFonts.alike(
                      textStyle:
                          Theme.of(context).textTheme.displayMedium,
                      color: Colors.white,
                      decoration:TextDecoration.lineThrough,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Checkbox(
      value: isCheckedState,
      activeColor: Colors.white,
      checkColor:Colors.black, 
    
      onChanged: checkCallBack
    )
                ),
          ),
        ));
  }
}


// class CheckBoxWidget extends StatelessWidget {
//   final bool isChecked;
//  final void Function(bool?)  checkCallBack;
//    CheckBoxWidget({
//     Key? key, required this.isChecked, required this.checkCallBack,
//   });



//   @override
//   Widget build(BuildContext context) {
    
//     return Checkbox(
//       value: isChecked,
//       activeColor: Colors.white,
//       checkColor:Colors.black,
//       onChanged: checkCallBack
//     );
//   }
// }