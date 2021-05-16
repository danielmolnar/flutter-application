import 'get_hex_color.dart';
import 'typewriter.dart';
import 'create_material_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Job Application',
        theme: ThemeData(
          primarySwatch: createMaterialColor(Color(0xFF14022b)),
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('\$ job application ',
                  style: GoogleFonts.pressStart2p(
                      textStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none))),
            )),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(alignment: Alignment.center, child: MyColumn()),
        ));
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Padding(
        padding: EdgeInsets.only(bottom: 30, top: 50),
        child: Container(
            width: width * 0.9,
            constraints:
                BoxConstraints(minHeight: height, minWidth: 100, maxWidth: 800),
            decoration: BoxDecoration(
                color: HexColor("14022b"),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.white, width: 2)),
            child: TypeWriter()));
  }
}
