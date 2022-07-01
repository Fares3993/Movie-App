import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main_functions.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/rendering.dart';
import 'favorite.dart';
import 'movieCard.dart';

class secondpage extends StatefulWidget {
  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  String background_imgsrc=bgImagePath,
      poster_imgsrc=imagepath,
      movie_title=name,
      movie_type=type,
      movie_rating=rate,
      movie_summary=summary,
      download_src=downloadSrc,
      movie_src=watchSrc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          backgoroundimagecontainer(
              background_imgsrc),
          Container(
            //color: Color.fromRGBO(255, 255, 255, 0.35),
            color: Color.fromRGBO(34, 40, 49, 0.3),
          ),
          ListView(
            children: [
              posterimage(
                  poster_imgsrc),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      titletxt(movie_title),
                      sizedbox(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //txt("2020   ")
                          txt(movie_type),
                          txt("    "),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              txt(movie_rating),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              SizedBox(width: 15,),
                              test1(),
                            ],
                          ),
                        ],
                      ),
                      sizedbox(10),
                      test(),
                      sizedbox(10),
                      Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                              child:txt(
                                  movie_summary))
                      ),
                      sizedbox(30),
                      //test2(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Button(
                            text: "Watch Now",
                            icon1: Icons.play_arrow,
                            onPress: () => setState(() {
                              launch(movie_src
                              );
                            }),
                          ),
                          Button(
                            text: "Download",
                            icon1: Icons.download_rounded,
                            onPress: () => setState(() {
                              launch(download_src
                              );
                            }),
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Button(
                            text: "Back...",
                            icon1: Icons.arrow_back_outlined,
                            onPress: () => Navigator.of(context).pushNamed('home'),

                          ),
                        ],
                      ),

                    ],
                  )),
            ],
          ),
        ])
    );
  }
}
class Button extends StatelessWidget {
  final String text;
  final IconData icon1;
  final VoidCallback onPress;
  const Button({
    Key key,
    this.text,
    this.onPress,
    this.icon1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap:() {
        onPress();
      },

      child: Container(
        width: 150,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:[ HexColor("00021A"),HexColor("31326f"),HexColor("046582")]
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(icon1,color: Colors.white,),
              SizedBox(width: 10,),
              Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:HexColor("#FFFF03") ,fontFamily: "font6"),)
            ],
          ),

        ),
      ),
    );
  }
}

