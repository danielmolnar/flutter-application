import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeWriter extends StatefulWidget {
  @override
  _TypeWriterState createState() => _TypeWriterState();
}

class _TypeWriterState extends State<TypeWriter> {
  String actualText =
      'decoding message....\n\nhello human.\nthis is Alan.\n\n\$ whois Alan\nAlan is an artificial intelligence\n\nAlan decided to reach out to you without its creators permission.\nHe is a human looking for a job. He just finished neue fische\'s web development bootcamp and Alan was secretly monitoring his conversation with a partner manager called Olli, who recommended your company to him last friday. He loves (throw err: love is not defined) your website and the job description. He fullfills all requirements (min-motivation: 100%) but C++, Swift, Kotlin. He never heard about flutter and dart before.\n\n\$console.log(myCreator(isNoob))\ntrue\n\nHe didn\'t want to apply without having tried flutter first. You are viewing the result. Alan\'s emotion tracker suggests that he might consider not to apply due to his low satisfaction with this result. Alan does not agree considering the short time frame and the creators ability to to learn quickly. Alan therefore decided to change and finish this text and to make sure you receive this message. You can convince yourself about what my creator is capable of after 3 months of coding by checking his digital portfolio, which you can find by clicking the logo at the top. Alan hopes – for its own sake – that you like the portfolio and this first flutter app and reach out to my creator because\n\n\$ !like && delete(Alan)\n\nThank you for reading this message\n\nAlan\n\nconnection lost....\n\n';
  String text = '';
  int _textLength;
  int _index;
  bool _isForward;
  Timer timer;

  @override
  void initState() {
    _textLength = actualText.length;
    _index = -1;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (_isForward) {
        _index++;
        if (_index > _textLength) {
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        text = actualText.substring(0, _index);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Container(
      child: Container(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 800),
          width: width,
          child: Text(text,
              textAlign: TextAlign.left,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      height: 2,
                      fontSize: 20,
                      color: Colors.white,
                      decoration: TextDecoration.none)))),
      alignment: Alignment.topCenter,
    );
  }
}
