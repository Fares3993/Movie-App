import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Movies.dart';
import 'theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      routes: {
      'home' : (context) => HomePage(),
      },
      home: DefaultTabController(
        length: 8,child: MovieApp(),
      ),
    );
  }
}
class MovieApp extends StatefulWidget {

  @override
  _MovieAppState createState() => _MovieAppState();
}
class _MovieAppState extends State<MovieApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: HexColor(Background_color),
      appBar: AppBar(
        actions: [
          RaisedButton(
              color:HexColor(Background_color),
              child: Container(
                child:Row(
                  children: [
                    Icon(Icons.cached,color:HexColor(Color),),
                    SizedBox(width: 10,),
                    Text(theme+" Theme",style: TextStyle(color:HexColor(Color),fontWeight: FontWeight.bold,fontFamily: 'font6',),),
                  ],
                ),
              ),
              onPressed: (){
                setState(() {
                  Change_Theme();
                });
              })
        ],
        elevation: 0.0,
        backgroundColor: HexColor(Background_color),
        title: Text("Movie App",style:TextStyle(color:HexColor(Color),fontWeight: FontWeight.bold,fontFamily: 'font6'),),
        bottom: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color:HexColor(Color),
          ),
          unselectedLabelColor: Colors.grey,
          labelColor:HexColor(Text_Color),
          tabs: [
            tabs("All"),
            tabs("Action"),
            tabs("Thriller"),
            tabs("Horror"),
            tabs("Drama"),
            tabs("Comedy"),
            tabs("Romantic"),
            tabs("Arabic"),
            //tabs("Favorite"),
          ],
        ),
      ),
      body: Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ HexColor(Bg_gredient),HexColor(color3),HexColor(color2),HexColor(color2)]
            )
        ),
        child: TabBarView(
          children: [
            all_movies(0,21,40,context),//All
            all_movies(40,47,67,context),//Action
            all_movies(67,78,107,context),//Thriller
            all_movies(107,114,132,context),//Horror
            all_movies(132,139,158,context),//Drama
            all_movies(158,165,185,context),//Comedy
            all_movies(185,192,205,context),//Romantic
            all_movies(205,212,230,context),//Arabic
          //  all_movies(5,10,15,context),//Favorite
          ],
        ),
      ),
    );
  }
}
Widget tabs(String txt){
  return Tab(
    child: Container(
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: HexColor(Color),
              width: 1
          )
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(txt,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'font6'),),
      ),
    ),
  );
}