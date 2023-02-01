import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final int val;

  CategoryItem(this.title , this.color, this.val);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.black.withOpacity(.4), Colors.black.withOpacity(.2),],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(height: 18),
          Text(val.toString(),style: TextStyle(color: color, fontSize: 25, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text(title,style: TextStyle(color: Colors.white, fontSize: 15,)),
        ],
      ),


    );
  }
}
