import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<String> Food = ["Authentic Beef Burger", "Chicken Burger", "Strawberry Float", "Shawarma","Mineral Water","Curly Fries","Jasmine Tea","Chicken Nugget"];
    List<String> Harga = ["RP.35.000.00", "RP.28.000.00", "RP.12.000.00", "RP.20.000.00", "RP.5.000.00","RP.15.000","RP.9.500.00","RP.21.000.00"];
    List<String> Slogan = ["Served with Special Beef", "Served with Nashville Chicken", "Using The Best Strawberry In Town", "Authentic Arabic Food","Boost Ur Throat!","Served Hot And Using Authentic Sauce","Jasmine Always Boost Ur Day!","Mild Chicken Nuggets"];
    
   return GridView.count(
  crossAxisCount: 2,
  shrinkWrap: true,
  childAspectRatio: 0.76,
  children: [
    for (int i = 1; i < 9; i++) 
      Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          children: [
          InkWell(
            onTap: () {
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset("assets/image/$i.png",
              width: 180,
              height: 180,
              fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              Food[i-1],
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF232227),
              ),
              ),
          ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              Slogan[i-1],
              style: TextStyle(
                fontSize: 12,
                color:Color(0xFF232227),
              ),
              ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Harga[i-1],
                ),
                Icon(Icons.control_point,
                size: 14.8,
                color: Colors.green,
                ),
            ],
            ),
          ),
      ],
        ),
      ),
     ],
     );
  }
}