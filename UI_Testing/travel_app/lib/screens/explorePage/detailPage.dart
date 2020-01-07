import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  
  final ImagePath, Title;

  DetailPage({this.ImagePath,this.Title});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  _buildImageList(String imagePath,String position){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken)
              )
            ),
          ),
        ],
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.ImagePath,),
                fit: BoxFit.cover,
              )
            ),
          ),
          //backdrop filter for blur and dark filter
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0,sigmaY: 6.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.65),
              )
            ),
          ),
          buildAppBarSection(),
          buildMyExperienceLayer(context,140),
          Positioned(
            top: 200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300.0,
                    width: MediaQuery.of(context).size.width *0.82,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54.withOpacity(0.4),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            0.0,
                            0.0
                          )
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/${widget.Title}.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 230,
                    left: 15,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('${widget.Title} Tour',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                  textStyle: TextStyle(color: Colors.white)
                                ),
                              ),
                              Text('Three days tour around ${widget.Title}',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.0,
                                  textStyle: TextStyle(color: Colors.white)
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: (){},
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.white,
                                ),
                                height: 30.0,
                                width: 30.0,
                                child: Center(child: Icon(Icons.chevron_right,color: Colors.pink[400],)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 525,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width -55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("My Photos",
                            style: GoogleFonts.montserrat(
                              fontSize: 27.0,
                              fontWeight: FontWeight.w700,
                              textStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:24.0),
                    child: Container(
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          // Padding(
                          //   padding: EdgeInsets.all(8.0),
                          //   child: Stack(
                          //     children: <Widget>[
                          //       Container(
                          //         height: 200,
                          //         width: 175,
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(10.0),
                          //           image: DecorationImage(
                          //             image: AssetImage("assests/LibyaLocationOne.jpg"),
                          //             fit: BoxFit.cover,
                          //             colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken)
                          //           )
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                           _buildImageList('assets/${widget.Title}LocationOne.jpeg',"first"),
                           _buildImageList('assets/${widget.Title}LocationTwo.jpeg',"Second"),
                           _buildImageList('assets/${widget.Title}LocationThree.jpeg',"Third"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  
  }

  SafeArea buildAppBarSection() {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0,vertical: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.pink[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink[400],
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                      offset: Offset(
                        0.0,
                        0.0
                      )
                    )
                  ]
                ),
                child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
              ),
            ),
            Text(widget.Title,
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                textStyle: TextStyle(
                  color: Colors.white
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
                    spreadRadius: 2.0,
                    blurRadius: 10.0,
                    color: Colors.grey[800],
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                ]
              ),
              child: Icon(Icons.bookmark_border,color:Colors.grey[400]),
            )
          ],
        ),
      ),
    );
  }

  Positioned buildMyExperienceLayer(BuildContext context,double placeTop) {
    return Positioned(
      top: placeTop,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Container(
          width: MediaQuery.of(context).size.width -55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("My experience",
                style: GoogleFonts.montserrat(
                  fontSize: 27.0,
                  fontWeight: FontWeight.w700,
                  textStyle: TextStyle(color: Colors.white)
                ),
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color:Colors.white),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}