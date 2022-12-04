import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/constant.dart';
import 'package:to_do_list_app/screens/widgets.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

var checkedValue;

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: kMainAppClr,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {}),
      body: SafeArea(
          child: Column(
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              height: hght * .4,
              width: width,
              color: kMainAppClr,
              padding: EdgeInsets.only(right: 0, top: 60, left: 0, bottom: 0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(90)),
                    height: 120,
                    width: 120,
                    child: Icon(Icons.list, size: 40, color: kMainAppClr),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "TickTick",
                    style: GoogleFonts.alike(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "12 Tasks is Pending",
                    style: GoogleFonts.alike(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //////
          const TaskBottom(),
        ],
      )),
    );
  }
}



//bottom curve

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
