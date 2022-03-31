import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildColumnAtTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildColumnAtTop("Candles", isSelected: true),
              buildColumnAtTop("Vases"),
              buildColumnAtTop("Bins"),
              buildColumnAtTop("Floral"),
              buildColumnAtTop("Decor"),
            ],),
        ],),);


  }
}
Column buildColumnAtTop(String text, {bool isSelected = false}) {
  return Column(
    children: [
      Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey, fontSize: 17),
      ),
      SizedBox(
        height: 5,
        width: 5,
      ),
      if (isSelected)
        Container(
          height: 5,
          width: 50,
          decoration:
          BoxDecoration(color: Colors.deepOrangeAccent[200], shape: BoxShape.rectangle, borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),),
        ),
    ],
  );
}


