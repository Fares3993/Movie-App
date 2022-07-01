String First_Color ="#FFFF03",
    Second_Color ="00021A", //c70039,09015f
    Color = First_Color,
    theme = "Light",
    Background_color="00021A",
    Movie_name_Color="FFFFFF",
    Search_Color="08111A",
    Text_Color="000000",
    button_color="000000",
    dialog_color="00021A",
    text_dialog_color="FFFF03",
    color1="00021A" ,
    color2="00021A",
    color3="00021A",
    color4="046582",
    color5="31326f",
    Color1 = "FFFF03",
    SearchIconColor="f6ecd8",
     Bg_gredient="00021A";
void Change_Theme() {
  if (Color == First_Color) {
    Color = "09015f";
    theme="Dark";
    Background_color="9ddfd3";
    Movie_name_Color="09015f";
    Search_Color="9ddfd3";
    Text_Color="FFFFFF";
    button_color="09015f";
    dialog_color="9ddfd3";
    text_dialog_color="09015f";
    Color1 = "31326f";
    color1="31326f" ;
    color2="9ddfd3" ;
    color3="dbf6e9";
    color4="dbf6e9";
    color5="dbf6e9";
    SearchIconColor="31326f";
    Bg_gredient="dbf6e9";
  }
  else {
    Color = First_Color;
    theme = "Light";
    Background_color="00021A";
    Movie_name_Color="FFFFFF";
    Search_Color="08111A";
    Text_Color="000000";
    button_color="000000";
    dialog_color="00021A";
    text_dialog_color="FFFF03";
    color1="00021A" ;
    color2="00021A";
    color3="00021A";
    color4="046582";
    color5="31326f";
    Color1 = "FFFF03";
    SearchIconColor="f6ecd8";
    Bg_gredient="00021A";
  }
}