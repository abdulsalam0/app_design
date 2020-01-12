import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131c4a),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Color(0xff222854)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Text("Homework",style: GoogleFonts.montserrat(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      textStyle: TextStyle(color: Colors.white),
                      ),
                    )
                  ),
                  Container(
                    width: 30,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_vert),
                      color: Colors.white,
                      iconSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                height: MediaQuery.of(context).size.height*.70,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    _buildTaskCard("Mathematices", "29 Dec 2019", "SC", "2", "1"),
                    _buildTaskCard("English", "31 Dec 2019", "SC", "3", "1"),
                    _buildTaskCard("Science", "1 Jan 2020", "SA", "2", "2"),

                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 50,
                    constraints: BoxConstraints.expand(
                      height: 50,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF825eff),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Center(
                      child: Text("Create New Homework",style: TextStyle(
                        color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
        barBackgroundColor: Colors.white,
        selectedItemBorderColor: Colors.transparent,
        selectedItemBackgroundColor: Color(0xFF825dfe),
        selectedItemIconColor: Colors.white,
        selectedItemLabelColor: Colors.black,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.search,
            label: 'Search',
          ),
          FFNavigationBarItem(
            iconData: Icons.description,
            label: 'Docements',
          ),
          FFNavigationBarItem(
            iconData: Icons.person_outline,
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  _buildTaskCard(String subject, String date, String init, String attachmentNum, String docementsNum){
    return InkWell(
      onTap: (){print("hello");},
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xFF222854),
            ),
            height: 125.0,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: 13,
            left: 20,
            child: Text(subject,style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              textStyle: TextStyle(
                color: Color(0xFF825ff6),
              )
              ),
            ),
          ),
          Positioned(
            top: 36,
            left: 20,
            child: Text(date,style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              textStyle: TextStyle(
                color: Color(0xFFFFFFFF),
              )
              ),
            ),
          ),
          Positioned(
            top:70,
            left: 20,
            child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.library_books),
                iconSize: 17,
                color: Color(0xFF886ed9),
              ),
            ),
          ),
          Positioned(
            top: 80.0,
            left: 71,
            child: Text(docementsNum,style: TextStyle(
              color: Colors.white
              ),
            ),
          ),
          Positioned(
            top:70,
            left: 105,
            child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.attach_file),
                iconSize: 17,
                color: Color(0xFF886ed9),
              ),
            ),
          ),
          Positioned(
            top: 80.0,
            left: 156,
            child: Text(attachmentNum,style: TextStyle(
              color: Colors.white
              ),
            ),
          ),
          Positioned(
            top: 37.5,
            right: 20.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff131c4a),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(init,style: TextStyle(
                  color: Colors.white
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}