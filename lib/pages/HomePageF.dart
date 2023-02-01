import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';
import 'dummy_data.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePageF()
    )
);

class HomePageF extends StatefulWidget {

  @override
  _HomePageFState createState() => _HomePageFState();
}

class _HomePageFState extends State<HomePageF> {
  final getData data = new getData();

  @override
  Widget build(BuildContext context) {
    data.getApiData();
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.4),
                            Colors.black.withOpacity(.2),
                          ]
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      
                      Padding(padding: EdgeInsets.only(left: 280),
                      child: FloatingActionButton.small(onPressed: (){}, child: Icon(Icons.info_outline),)),
                      Text("Riyadh Air Monitor", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.only(left: 30,right: 20),
                      child: Text("This Dashboard shows the amount of pollutants in the air where device is present", style: TextStyle(color: Colors.white, fontSize: 15,),
                      textAlign: TextAlign.center,
                      )
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Center(child: Text("Visit Site", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),)),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                  child: GridView(
                    children: DUMMY_CATEGORIES.map((categoryItem) => CategoryItem(
                        categoryItem.title,
                        categoryItem.color,
                      categoryItem.val
                    )).toList(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3/2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20
                    ),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}