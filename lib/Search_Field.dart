import 'package:flutter/material.dart';
import 'package:movie_app/SecondPage.dart';
import 'theme.dart';
import 'package:hexcolor/hexcolor.dart';
import 'List_of_Data.dart';
import 'movieCard.dart';
bool check =false;
TextEditingController _movieName=TextEditingController();
Widget search_field(BuildContext context){
  return Container(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: HexColor(Search_Color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextField(
            controller: _movieName,
            decoration:InputDecoration(
              border: InputBorder.none,
              hintText: "Enter the movie name",
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                  icon: Icon(Icons.search,color:HexColor(SearchIconColor)),
                  onPressed: (){
                    for(int i=0;i<Informations.length;i++){
                      if(_movieName.text.toLowerCase()==Informations[i].Name.toLowerCase()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>secondpage()));
                        name=Informations[i].Name;
                        type =Informations[i].Type;
                        rate=Informations[i].Rating.toString();
                        imagepath= Informations[i].Image_Path;
                        bgImagePath=Informations[i].bg_Image;
                        summary=Informations[i].Summary;
                        downloadSrc=Informations[i].download_link;
                        watchSrc= Informations[i].video_link;
                       // check=false;
                        check=true;
                        i=0;
                        break;
                      }





                      check=false;
                    }
                    if(check==false) {
                      Dialogue(context, "This Movie is Not Exist");
                    }
                  },
                ),
              ),
              hintStyle: TextStyle(fontSize: 18,
                color: HexColor(SearchIconColor),

              ),

            ) ,
            style: TextStyle(color: Colors.white,fontFamily: 'font6',fontSize: 18),
            keyboardType: TextInputType.text,
          ),
        )
      ],
    ),
  );
}
void Dialogue(BuildContext context,String Message )
{
  showDialog(
      context: context,
      builder: (BuildContext context){
        return Dialog(
          backgroundColor:  HexColor(dialog_color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: 150,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10,top: 15),
                    child: Text(Message,style: TextStyle(color:HexColor(text_dialog_color),fontFamily: "font6",fontWeight: FontWeight.bold,fontSize: 16),)),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 10),
                  child: RaisedButton(
                      child: Text("OK",style: TextStyle(color:HexColor(button_color),fontFamily: "font6",fontWeight: FontWeight.bold,fontSize: 16)),
                      onPressed:(){
                        Navigator.of(context).pop();
                      }
                  ),
                )
              ],
            ),
          ),
        );
      }
  );
}