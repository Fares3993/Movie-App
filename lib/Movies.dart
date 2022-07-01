import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:hexcolor/hexcolor.dart';
import 'theme.dart';
import 'Search_Field.dart';
import 'movieCard.dart';
import 'List_of_Data.dart';
Widget all_movies(int index1,int index2,int index3,BuildContext context)
{
  return Padding(
    padding: EdgeInsets.only(top: 12.0),
    child:ListView(
      children: [
        search_field(context),
        SizedBox(height: 8,),
        image_slider(index1,index3),
        SizedBox(height: 12.0,),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 12.0),
              child: Text("Top Trends",style: TextStyle(color:HexColor(Color),fontWeight: FontWeight.bold,fontFamily: 'font6',fontSize: 20),),
            ),

          ],
        ),
        SizedBox(height: 12.0,),
        Container(
          width: double.infinity,
          height: 300.0
          ,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for(int i=index1;i<index2;i++)
          Padding(

              padding:EdgeInsets.symmetric(horizontal: 12.0),
              child: MovieCard(Informations[i].Name, "${Informations[i].Rating}", "${Informations[i].Image_Path}","${Informations[i].bg_Image}","${Informations[i].Summary}","${Informations[i].download_link}","${Informations[i].video_link}","${Informations[i].Type}",context)
          )
            ],
          ),
        ),
        SizedBox(height: 12.0,),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 12.0),
              child: Text("Recommended for you",style: TextStyle(color:HexColor(Color),fontWeight: FontWeight.bold,fontFamily: 'font6',fontSize: 20),),
            ),

          ],
        ),
        SizedBox(height: 12.0,),
        Container(
          width: double.infinity,
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for(int i=index2;i<index3;i++)
                Padding(
                    padding:EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard(Informations[i].Name, "${Informations[i].Rating}", "${Informations[i].Image_Path}","${Informations[i].bg_Image}","${Informations[i].Summary}","${Informations[i].download_link}","${Informations[i].video_link}","${Informations[i].Type}",context)
                )
            ],
          ),
        ),
      ],
    ) ,
  );
}
Widget image_slider(int index1,int index2){
  return Container(
    height: 200,
    width: 200,
    child: Carousel(
      boxFit: BoxFit.fill,
      images: [
        for(int i=index1;i<index2;i++)
      NetworkImage(
          "${Informations[i].Image_Path}"
  )
      ],
      dotSize: 0,
    ),
  );
}

