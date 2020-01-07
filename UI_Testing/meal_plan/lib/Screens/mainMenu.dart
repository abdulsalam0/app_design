import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenu extends StatefulWidget {

  final String title;

  MainMenu({this.title});
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  _BuildFoodTile(String imgPath,String name){
    return InkWell(
      onTap: (){
        print(name);
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Hero(
              tag: imgPath,
              child: Image(
                image: AssetImage("assets/${imgPath}"),
                fit: BoxFit.cover,
                height: 75,
                width: 75,
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name,style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 17.0
                    ),
                  ),
                  Text("200"),
                ],
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF30cfbc),
            child: Container(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: IconButton(
                        onPressed: (){},
                        color: Colors.white,
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    Container(
                      width: 135.0,
                      height:50.0,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: (){},
                            color: Colors.white,
                            icon: Icon(Icons.donut_small),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: IconButton(
                              onPressed: (){},
                              color: Colors.white,
                              icon: Icon(Icons.menu),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: MediaQuery.of(context).size.height*.17,
            child: RichText(text: TextSpan(
                text:"Healthy ",
                style: GoogleFonts.montserrat(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(text:"Food",style: GoogleFonts.montserrat(fontSize: 35,fontWeight:FontWeight.w400)),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.25,
            child: Container(
              height: MediaQuery.of(context).size.height*0.75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
                color: Color(0xffffffff),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height:50,),
                  Padding(
                    padding: const EdgeInsets.only(left:40.0,right:30.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.50,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        primary: false,
                        children: <Widget>[
                          _BuildFoodTile("plate1.png","Salmon"),
                          _BuildFoodTile("plate2.png","Baked Potato"),
                          _BuildFoodTile("plate3.png","Salmon"),
                          _BuildFoodTile("plate4.png","Salmon and vegs"),
                          _BuildFoodTile("plate5.png","Rice & Chicken"),
                          _BuildFoodTile("plate6.png","Salmon"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left:30),
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2,color: Colors.grey[400]),
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.search),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right:30.0),
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2,color: Colors.grey[400]),
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.search),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}