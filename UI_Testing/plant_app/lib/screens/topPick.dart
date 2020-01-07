import 'package:flutter/material.dart';

class TopPick extends StatefulWidget {
  @override
  _TopPickState createState() => _TopPickState();
}

class _TopPickState extends State<TopPick> with SingleTickerProviderStateMixin{

  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(vsync: this, length: 5);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:13.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: (){},
                      color: Colors.grey,
                      iconSize: 40.0,
                    ),
                  Padding(
                    padding:const EdgeInsets.only(right: 17.0),
                    child: FloatingActionButton(
                      onPressed: (){},
                      child: Icon(Icons.shopping_cart,color:Colors.black,size: 29.0,),
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      elevation: 0.0,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:13.0),
              child: Text("Top Picks",style: TextStyle(fontFamily:"Monterrat",fontSize: 40.0,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 12.0),
            TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[

                Tab(
                  child: Text("Top",style: TextStyle(fontSize: 17.0,fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text("Outdoor",style: TextStyle(fontSize: 17.0,fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text("Indoor",style: TextStyle(fontSize: 17.0,fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text("Plants",style: TextStyle(fontSize: 17.0,fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
                ),
                Tab(
                  child: Text("Profile",style: TextStyle(fontSize: 17.0,fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}