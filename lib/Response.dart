import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  Response(this.texty, this.height, this.width, this.field);
  String field;
  final double height;
  final double width;
  final TextEditingController texty;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            border: Border.all(color: Colors.indigo, width: 3)),
        child: TextFormField(
          controller: texty,
          textInputAction: TextInputAction.done,
          onChanged: (value) {
            field = value;
          },
          autocorrect: true,
          decoration: InputDecoration(
              hintText: "Type $field",
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              border: InputBorder.none),
          cursorColor: Colors.black,
          textAlign: TextAlign.center,
          maxLines: 9,
        ),
      ),
    );
  }
}
