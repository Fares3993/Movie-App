import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  final int maxrating;
  final Function(int) onratingselected;
  Rating(this.onratingselected,[this.maxrating=5]);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int current_Rating=0;
  Widget _bildratingstar(int index)
  {
    if(index< current_Rating)
      return Icon(Icons.star,color: Colors.yellow[700],size: 30,);
    else
      return Icon(Icons.star,color: Colors.white70,size: 25,);
  }
  Widget fun()
  {
    final stars=List<Widget>.generate(5, (index)  {
      return GestureDetector(
        child: _bildratingstar(index),
        onTap: (){
          setState(() {
            current_Rating=index+1;
            this.widget.onratingselected(current_Rating);
          });

        },
      );
    });
    return Row(
      children: [
        Row(children:stars,),
        current_Rating>0 ?IconButton(icon: Icon(Icons.clear,color:Colors.white, size: 30,), onPressed: (){
          setState(() {
            current_Rating=0;
            this.widget.onratingselected(current_Rating);
          });
        }): Container()
      ],

    );
  }
  @override
  Widget build(BuildContext context) {
    return fun();
  }
}