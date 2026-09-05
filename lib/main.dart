import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';
//----------------------------------

void main() {
  runApp(FlutterApplication2());
}

//----------------------------------
//แนะนำเป็น class แบบ stateful widget โดยตั้งชื่อล้อกับชื่อ project
//classนี้จะเป็นตัวเรียกใช้งานหน้าต่างๆของApplication โดย widget หลักของแอปแนะนำ materialApp
class FlutterApplication2 extends StatefulWidget {
  const FlutterApplication2({super.key});

  @override
  State<FlutterApplication2> createState() => _FlutterApplication2State();
}

class _FlutterApplication2State extends State<FlutterApplication2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeUI(),
      theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)),
    );
  }
}
