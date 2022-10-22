import 'package:flutter/material.dart';
import 'Mail.dart';

class Manjeet extends StatelessWidget {
  String message = "message";
  String name = "name";
  String contactNo = "contact No";
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/backg.jpg'), fit: BoxFit.cover)),
            padding: EdgeInsets.all(15.00),
            child: Mail(
              text1: text1,
              screenSize: screenSize,
              message: message,
              text2: text2,
              name: name,
              text3: text3,
              contactNo: contactNo,
              email: "manjeetpathak2003@gmail.com",
              man: "Manjeet Pathak",
              trade: 'IT 2nd Year',
              img: 'images/man.jpeg',
            ),
          ),
        ),
      ),
    );
  }
}
