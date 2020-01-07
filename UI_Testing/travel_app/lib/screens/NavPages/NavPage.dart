import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/screens/explorePage/detailPage.dart';
import 'package:travel_app/screens/explorePage/detailPage.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  _BuildListItem(String country, String imgPath, String description){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 13.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
              ),
            ),
          ),
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(country,
                  style: GoogleFonts.montserrat(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(description,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(ImagePath: imgPath,Title:country,)));
                    },
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text("explore with me",
                          style: GoogleFonts.montserrat(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                            textStyle: TextStyle(
                              color: Colors.pink[400],
                            )
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.pink[400],
                    borderRadius: BorderRadius.circular(7.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink[400],
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                        offset: Offset(
                          0.0,
                          0.0,
                        )
                      )
                    ]
                  ),
                  child: Center(
                    child: Icon(Icons.filter_list,color: Colors.white,),
                  ),
                ),
                Text("HOME",
                  style: GoogleFonts.montserrat(
                    fontSize: 35.0,
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.grey[800],
                    boxShadow: [
                      BoxShadow(
                      color: Color(0xFFFFFFFF).withAlpha(60),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                          0.0,
                          0.0,
                        )
                      )
                    ]
                  ),
                  child: Icon(Icons.bookmark_border,color: Colors.grey[400]),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height - 210,
              child: ListView(
                children: <Widget>[
                  _BuildListItem("Libya", "assets/Libya.jpg", "The land of the sand"),
                  _BuildListItem("Hungry", "assets/Hungry.jpg", "Buda and Pest"),
                  _BuildListItem("France", "assets/France.jpg", "Devenir chêvre"),
                  _BuildListItem("Egypt", "assets/Egypt.jpg", "The land of the pharaohs"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}