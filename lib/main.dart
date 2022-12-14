import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/models/models.dart';
import 'package:to_do_list_app/screens/taskscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>DataModel(),
      child: MaterialApp(
        theme: ThemeData(
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(Colors.yellow),
        fillColor: MaterialStateProperty.all(Colors.white),
      )
      ),
      
        home: const TaskScreen(),
      ),
    );
  }
}

