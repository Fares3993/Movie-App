import 'package:movie_app/AddClasses.dart';
import 'package:movie_app/Register.dart';
import 'package:flutter/material.dart';
import  'Home.dart';
import 'package:hexcolor/hexcolor.dart';
import 'theme.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    title: "Home",
    home: StartPage(),

    routes: {
      'login' : (context) => LOGIN(),
      'signup' : (context) => SignUp(),
      'Start' : (context) => StartPage(),
      'HomePage' : (context) => HomePage(),
    },
  ));
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double container_hight=size.height*0.6;
    double container_width=size.width*0.8;
    return Scaffold(
    body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ HexColor(color1),HexColor(color2),HexColor(color3),HexColor(color4)]
                )
              ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: size.height*0.1,),
                      Center(
                        child: Text("Movie App",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 50,color: Colors.white),),
                      ),
                      SizedBox(height: size.height*0.15,),
                      ////////////////////////////////////////////////////////////////////////////////////////////
                      Container(
                        height: container_hight,
                        width: container_width,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),
                              Text("Hellow!!",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 30,color: Colors.black),),
                              SizedBox(height:10,),
                              Text("We wish you a pleasant viewing",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 15,color: Colors.black38),),
                              SizedBox(height: container_hight*0.3,),
                              AddButton(
                                text: "LOGIN",
                                wdth: 250,
                                hgh: 60,
                                icon1: Icons.login,
                                sized_box: 50,
                                onPress: () => Navigator.of(context).pushNamed('login'),
                              ),
                              SizedBox(height: 20,),
                              AddButton(
                                text: "SIGNUP",
                                wdth: 250,
                                hgh: 60,
                                icon1: Icons.accessibility_new,
                                sized_box: 50,
                                onPress: () => Navigator.of(context).pushNamed('signup'),
                              ),
                              SizedBox(height: 20,),
                              AddButton(
                                text: theme+" Theme",
                                wdth: 250,
                                hgh: 60,
                                icon1: Icons.cached_sharp,
                                sized_box: 50,
                                  onPress: (){
                                    setState(() {
                                      Change_Theme();
                                    });
                                  })
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
                ),
                  // SizedBox(height: size.height * 0.4,),
          );
  }
}

