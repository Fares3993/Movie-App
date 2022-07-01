import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_app/SecondPage.dart';
import 'theme.dart';

String name,rate,imagepath,bgImagePath,summary,downloadSrc,watchSrc,type;
Widget MovieCard(String Title,String Rate,String ImagePath,String BgImagePath ,String Summary ,String DownLoadSrc,String WatchSrc,String Type,BuildContext context)
{
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>secondpage()));
      name=Title;
      rate=Rate;
      imagepath=ImagePath;
      bgImagePath = BgImagePath;
      summary = Summary;
      downloadSrc =DownLoadSrc;
      watchSrc = WatchSrc;
      type= Type;
    },
    child: Column(
      children: [
        Card(

          elevation: 0.0,
          child: Image.network(ImagePath,fit: BoxFit.fill,width: 150.0,height: 200.0,),
        ),
        SizedBox(height: 5.0,),
        Text(Title,style: TextStyle(
            color: HexColor(Movie_name_Color),
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            fontFamily: "font6"
        ),
        ),
        SizedBox(height: 5.0,),
        // SizedBox(height: 5.0,),
        Row(
          children: [
            Text(
              Rate,
              style: TextStyle(
                  color: HexColor(Movie_name_Color),
                  fontSize: 18.0,
                  fontFamily: "font6"
              ),
            ),
            Icon(Icons.star,color: Colors.yellow[700],)
          ],
        )
      ],
    ),
  );
}