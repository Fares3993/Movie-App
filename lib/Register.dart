import 'package:movie_app/AddClasses.dart';
import 'package:flutter/material.dart';
import 'Search_Field.dart';
import 'package:hexcolor/hexcolor.dart';
import 'theme.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // ignore: unused_field
  String _firstname = ' ';
  // ignore: unused_field
  String _lastname = ' ';
  String _email = ' ';
  String _password = ' ';
  String _confirmpassword = ' ';
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // AuthBase authBase = AuthBase();
  bool valid = false;
  bool validate() {
    if (formkey.currentState.validate()) {
      valid = true;
    } else {
      valid = false;
    }
    return valid;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size / 6;
    Size size1 = MediaQuery.of(context).size;
    double container_hight=size1.height*0.75;
    double container_width=size1.width*0.85;
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
                SizedBox(height: size1.height*0.1,),
                Center(
                  child: Text("SIGNUP",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 50,color: Colors.white),),
                ),
                SizedBox(height: 20,),
                Container(
                  height: container_hight,
                  width: container_width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30,),
                          Text("Wellcome!!",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 30,color: Colors.black),),
                          SizedBox(height:10,),
                          Text("Please Create Your Account",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 15,color: Colors.black38),),
                          SizedBox(height: 50,),
                          Center(
                            child: Form(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              key: formkey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AddTextInput(
                                    text: "FirstName",
                                    // text_1: "name",
                                    changed: (value) => _firstname = value,
                                    icon: Icon(
                                      Icons.account_circle,
                                      color: HexColor("046582"),
                                    ),
                                  ),
                                  AddTextInput(
                                    text: "LastName",
                                    // text_1: "name",
                                    changed: (value) => _lastname = value,
                                    icon: Icon(
                                      Icons.account_circle,
                                      color: HexColor("046582"),
                                    ),
                                  ),
                                  AddEmailInput(
                                    text: "Email",
                                    text_1: "Email@gmail.com",
                                    changed: (value) => _email = value,
                                    icon: Icon(
                                      Icons.email,
                                      color: HexColor("046582"),
                                    ),
                                  ),
                                  AddPasswordInput(
                                    text: "Password",
                                    changed: (value) => _password = value,
                                    icon: Icon(
                                      Icons.lock,
                                      color: HexColor("046582"),
                                    ),
                                    value: true,
                                  ),
                                  AddPasswordInput(
                                    text: "ConfirmPassword",
                                    changed: (value) => _confirmpassword = value,
                                    icon: Icon(
                                      Icons.lock,
                                      color: HexColor("046582"),
                                    ),
                                    value: true,
                                  ),
                                  AddButton(
                                    text: "SIGN UP",
                                    wdth: 300,
                                    hgh: 60,
                                    icon1: Icons.accessibility_new,
                                    sized_box: 70,
                                    onPress: () async {
                                      if (formkey.currentState.validate()&&_password == _confirmpassword) {
                                        Navigator.of(context).pushNamed('HomePage');
                                      }
                                      else if (_password != _confirmpassword) {
                                        Dialogue(context, "Password are not Matching !!");
                                        return 'Not Valid';
                                      }
                                    },
                                  ),
                                  SizedBox(height: 10,),
                                  AddButton(
                                      text: theme+" Theme",
                                      wdth: 300,
                                      hgh: 60,
                                      icon1: Icons.cached_sharp,
                                      sized_box: 50,
                                      onPress: (){
                                        setState(() {
                                          Change_Theme();
                                        });
                                      }),
                                  FlatButton(
                                    child: Text(
                                      'Do You have an account ?',
                                      style: TextStyle(color:  HexColor(color1), fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => LOGIN()));
                                    },
                                  )
                                ],
                              ),
                            ),
                          )
                        ]
                    )
                  ),
                ),
               SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LOGIN extends StatefulWidget {
  @override

  _LOGINState createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
  //AuthBase authBase = AuthBase();
  String _check_email,_check_password;
 List<String>  _email =[ 'asmaa@gmail.com', 'fares@gmail.com','mostafa@gmail.com'] ;
 List<String>  _password =[ '12345','12345','12345'];
 bool check = false;
 GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool valid = false;
  bool validate() {
    if (formkey.currentState.validate()) {
      valid = true;
    } else {
      valid = false;
    }
    return valid;
  }

  @override

  Widget build(BuildContext context) {
    Size size1 = MediaQuery.of(context).size;
    double container_hight=size1.height*0.7;
    double container_width=size1.width*0.85;
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
          child:SingleChildScrollView(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size1.height*0.1,),
              Center(
                child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 50,color: Colors.white),),
              ),
              SizedBox(height: size1.height*0.1,),
              Container(
                height: container_hight,
                width: container_width,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30,),
                          Text("Wellcome!!",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 30,color: Colors.black),),
                          SizedBox(height:10,),
                          Text("Please Enter Your Account to Login",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "font5",fontSize: 15,color: Colors.black38),),
                          SizedBox(height: size1.height*0.1,),
                          Center(
                            child: Form(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              key: formkey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AddEmailInput(
                                    text: "Email",
                                    text_1: "Email@gmail.com",
                                    changed: (value) => _check_email = value,
                                    icon: Icon(
                                      Icons.email,
                                      color: HexColor("046582"),
                                    ),
                                  ),
                                  AddPasswordInput(
                                    text: "Password",
                                    changed: (value) => _check_password = value,
                                    icon: Icon(
                                      Icons.lock,
                                      color: HexColor("046582"),
                                    ),
                                    value: true,
                                  ),
                                  SizedBox(height: 10,),
                                  AddButton(
                                    text: "LOGIN",
                                    wdth: 300,
                                    hgh: 60,
                                    icon1: Icons.login,
                                    sized_box: 70,
                                    onPress: () async {
                                      for(int i=0;i<_email.length;i++){
                                      if (formkey.currentState.validate()&&_password[i] == _check_password&&_email[i]==_check_email) {
                                        Navigator.of(context).pushNamed('HomePage');
                                        check = true;
                                        i = 0;
                                        break;
                                      }
                                      check = false;
                                      }
                                      if (formkey.currentState.validate()&& check == false){
                                        Dialogue(context, "The Email or Password\n\n is Incorrect!!");
                                        return 'Not Valid';
                                      }
                                    },
                                  ),
                                  SizedBox(height: 20,),
                                  AddButton(
                                      text: theme+" Theme",
                                      wdth: 300,
                                      hgh: 60,
                                      icon1: Icons.cached_sharp,
                                      sized_box: 50,
                                      onPress: (){
                                        setState(() {
                                          Change_Theme();
                                        });
                                      }),
                                  SizedBox(height: 20,),
                                  FlatButton(
                                    child: Text(
                                      'Do You not have an account ?',
                                      style: TextStyle(color: HexColor(color1), fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => SignUp()));
                                    },
                                  )
                                ],
                              ),
                            ),
                          )
                        ]
                    )
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),),
        ),
      ),
    );
  }
}
