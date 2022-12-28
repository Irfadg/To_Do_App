

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/constant.dart';
import 'package:to_do_list_app/models/models.dart';

class AddTaskScreen extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
   final taskTextController = TextEditingController();
    return Container(
      decoration: BoxDecoration(color: Color(0xff757575)),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Add new tasks",
              style: GoogleFonts.alike(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  color: kMainAppClr,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: taskTextController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kMainAppClr, width: 2.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 45,
              color: kMainAppClr,
              onPressed: () {
                Provider.of<DataModel>(context,listen: false).AddTaskIntoList(taskTextController.text);
                 print(taskTextController.text);
                // taskTitle(taskTextController.text);
                Navigator.pop(context);
              },
              child: const Text('ADD'),
              minWidth: 150,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
