import 'package:flutter/material.dart';


Widget backgoroundimagecontainer(String imgsrc) {
  return Container(
    decoration: BoxDecoration(
      image:
      DecorationImage(image: NetworkImage(imgsrc), fit: BoxFit.fitHeight),
    ),
  );
}

Widget posterimage(String imgsrc) {
  return Image.network(
    imgsrc,
    width: 350,
    height: 350,
  );
}

Widget sizedbox(double height) {
  return SizedBox(
    height: height,
  );
}

Widget  txt(String text) {
  return Text(text, style: TextStyle(fontSize: 16, color: Colors.white));
}

Widget  titletxt(String text) {
  return Text(text, style: TextStyle(fontSize: 23, color: Colors.white));
}

Widget rasidbutton(String txt, Function f) {
  return RaisedButton(
    onPressed: () => f,
    child: Text(txt, style: TextStyle(fontSize: 15, color: Colors.white)),
    color: Colors.orangeAccent[400],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      //side: BorderSide(color: Colors.red)
    ),
  );
}