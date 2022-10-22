import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'Response.dart';

class Mail extends StatelessWidget {
  const Mail(
      {Key? key,
      required this.text1,
      required this.screenSize,
      required this.message,
      required this.text2,
      required this.name,
      required this.text3,
      required this.contactNo,
      required this.email,
      required this.man,
      required this.trade,
      required this.img})
      : super(key: key);

  final TextEditingController text1;
  final Size screenSize;
  final String message;
  final TextEditingController text2;
  final String name;
  final TextEditingController text3;
  final String contactNo;
  final String email;
  final String man;
  final String trade;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 73,
          backgroundColor: Colors.indigoAccent,
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child:
                  CircleAvatar(radius: 67, backgroundImage: AssetImage(img))),
        ),
        SizedBox(height: 20),
        Text(
          trade,
          style: TextStyle(fontFamily: "Lobster", fontSize: 20),
        ),
        SizedBox(
          width: 200,
          child: Divider(
            thickness: 2,
            color: Colors.blueGrey,
          ),
        ),
        Text(
          "Reach out to $man",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
              fontFamily: "Bebas_Neue"),
        ),
        SizedBox(height: 20),
        Response(
            text1, screenSize.height / 7, screenSize.width / 0.66, message),
        SizedBox(height: 20),
        Response(text2, screenSize.height / 9, screenSize.width / 0.66, name),
        SizedBox(height: 20),
        Response(
            text3, screenSize.height / 9, screenSize.width / 0.66, contactNo),
        SizedBox(height: 20),
        SizedBox(width: 30),
        TextButton(
          onPressed: () async {
            String msg1 = text1.text;
            String msg2 = text2.text;
            String msg3 = text3.text;
            final Email send_email = Email(
              body: "$msg1\n- $msg2\n- $msg3",
              subject: 'Queries and Conversation',
              recipients: ['$email'],
              isHTML: false,
            );

            await FlutterEmailSender.send(send_email);
            text1.clear();
            text2.clear();
            text3.clear();
          },
          child: Text(
            'Send Email',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        )
      ],
    );
  }
}
