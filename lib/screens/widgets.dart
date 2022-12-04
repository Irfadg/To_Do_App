import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/constant.dart';

class TaskBottom extends StatefulWidget {
  const TaskBottom({super.key});

  @override
  State<TaskBottom> createState() => _TaskBottomState();
}

class _TaskBottomState extends State<TaskBottom> {
  @override
  Widget build(BuildContext context) {
       double hght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      height: hght * .1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kMainAppClr,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text("task 1",
                            style:  GoogleFonts.alike(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                       color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                          ),
                          trailing: Checkbox(
                          
                          
                            value: false, onChanged: ((value) {
                            
                          }),
                        )
                    ),
                      ),
                  ));
                });
  }
}