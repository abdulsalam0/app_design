import 'package:flutter/material.dart';

class PlantsList extends StatefulWidget {
  @override
  _PlantsListState createState() => _PlantsListState();
}

class _PlantsListState extends State<PlantsList> {
  @override
  Widget build(BuildContext context) {
    ListView(
      children: <Widget>[
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 25.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard("", "price", "plantType", "plantName"),
              getPlantCard("", "price", "plantType", "plantName"),
              getPlantCard("", "price", "plantType", "plantName"),
              getPlantCard("", "price", "plantType", "plantName"),
              getPlantCard("", "price", "plantType", "plantName"),
            ],
          ),
        ),
      ],
    );
  }
  Stack getPlantCard(String imagePath, String price, String plantType, String plantName){
    return Stack(
      children: <Widget>[
        // size of the card
        Container(
          height: 325.0,
          width: 225.0,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.green),
          ),
        ),
      ],
    );
  }
}