import 'package:flutter/material.dart';
import 'Rating.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  int _rating = 0;
  //bool fav = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Rating((rating) {
              setState(() {
                _rating = rating;
              });
            }),
            SizedBox(
                height: 25,
                child: _rating > 0
                    ? Text("your Rating is ${_rating*2}",
                    style: TextStyle(fontSize: 15, color: Colors.white))
                    : SizedBox.shrink()),
          ],
        )
      ],
    );
  }
}

class test1 extends StatefulWidget {
  @override
  _test1State createState() => _test1State();
}
class _test1State extends State<test1> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: fav == false
            ? IconButton(
            icon: Icon(Icons.favorite_border_outlined,color: Colors.white, size: 25),
            onPressed: () {
              setState(() {
                fav = !fav;
              });
            })
            : IconButton(
            icon: Icon(Icons.favorite, color: Colors.red, size: 30),
            onPressed: () {
              setState(() {
                fav = !fav;
              });
            })
    );
  }
}