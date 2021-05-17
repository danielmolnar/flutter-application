import 'typewriter.dart';
import 'get_hex_color.dart';
import 'create_material_color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
          primarySwatch: createMaterialColor(Color(0xFF221437)),
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
            elevation: 20.0,
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
        backgroundColor: HexColor('568ba4'),
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
        padding: EdgeInsets.only(
          bottom: 50,
          top: 50,
        ),
        child: Container(
            width: width * 0.9,
            constraints: BoxConstraints(
              minHeight: height,
              minWidth: 100,
              maxWidth: 800,
            ),
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.5),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                )
              ],
              color: HexColor("221437"),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 25, top: 27),
                  child: _myLogo(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                  child: TypeWriter(),
                )
              ],
            )));
  }
}

const _url = 'https://danielmolnar.dev';
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

Widget _myLogo() {
  return Material(
    color: Color(0x00000000),
    child: InkWell(
      onTap: () => _launchURL(),
      child: Container(
        height: 150,
        alignment: Alignment.center,
        child: Image.asset(
          'assets/Logo.webp',
          fit: BoxFit.contain,
          width: 150,
        ),
      ),
    ),
  );
}
