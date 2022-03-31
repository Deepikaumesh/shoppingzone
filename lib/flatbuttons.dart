import 'package:flutter/material.dart';


class BuildFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildFlatButton("Home Decor", isSelected: true),
          buildFlatButton("Bath & Body"),
          buildFlatButton("Beauty"),],
      ),
    );
  }
}

FlatButton buildFlatButton(String text, {bool isSelected = false}) {
  return FlatButton(
    onPressed: () {
      print("button pressed");
    },
    child: Text(
      text,
      style: TextStyle(
          color: isSelected ? Colors.deepOrangeAccent[100]: Colors.white, fontSize: 16),
    ),
    shape: StadiumBorder(),
    color: isSelected ? Colors.white : Colors.deepOrangeAccent[100],
  );
}
