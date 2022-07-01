import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'theme.dart';
class AddButton extends StatelessWidget {
  final String text;
  final double wdth,sized_box,hgh;
  final IconData icon1;
  final VoidCallback onPress;
  const AddButton({
    Key key,
    this.text,
    this.onPress,
    this.icon1,
    this.wdth,
    this.sized_box,
    this.hgh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(

      onTap:() {
        onPress();
      },

      child: Container(
      width: wdth,
        height: hgh,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:[ HexColor(color1),HexColor(color5),HexColor(color4)]
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(icon1,color: Colors.white,),
              SizedBox(width: sized_box,),
              Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:HexColor(Color1) ,fontFamily: "font6"),)
            ],
          ),

        ),
      ),
    );
  }
}
class AddTextInput extends StatelessWidget {
  final Function changed;
  final String text;
  final String text_1;
  final Icon icon;
  AddTextInput({
    Key key,
    this.changed,
    this.text,
    this.text_1,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width * 0.75,
          margin: EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            onChanged: changed,
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(),
              labelText: text,
              hintText: text_1,
              labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black38,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: HexColor("282846"),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              prefixIcon: icon,
            ),
            autocorrect: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            autofocus: false,
            style: TextStyle(),
            validator: (value) {
              if (value.isEmpty) {
                return "Required";
              } else {
                return null;
              }
            },
          ),
        ),
      ],
    );
  }
}

class AddEmailInput extends StatelessWidget {
  final Function changed;
  final String text;
  final String text_1;
  final Icon icon;
  AddEmailInput({
    Key key,
    this.changed,
    this.text,
    this.text_1,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.75,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        onChanged: changed,
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(),
          labelText: text,
          hintText: text_1,
          labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,
              width: 2.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: HexColor("282846"),
              width: 2.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          prefixIcon: icon,
        ),
        autocorrect: true,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        autofocus: false,
        style: TextStyle(),
        validator: MultiValidator([
          RequiredValidator(errorText: "Required"),
          EmailValidator(errorText: "Not a valid email"),
        ]),
      ),
    );
  }
}

class AddPasswordInput extends StatelessWidget {
  final Function changed;
  final String text;
  final String text_1;
  final Icon icon;
  final bool value;
  AddPasswordInput({
    Key key,
    this.changed,
    this.text,
    this.text_1,
    this.icon,
    this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.75,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        onChanged: changed,
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(),
          labelText: text,
          hintText: text_1,
          labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.black38 ,
              width: 2.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: HexColor("282846"),
              width: 2.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          prefixIcon: icon,
        ),
        autocorrect: true,
        obscureText: value,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        autofocus: false,
        style: TextStyle(),
        validator: (value) {
          if (value.isEmpty) {
            return "Required";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
