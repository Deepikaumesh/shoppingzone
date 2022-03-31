
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bottombar(Icons.account_circle),
          bottombar(Icons.shopping_basket),
          bottombar(Icons.home_outlined,isSelected: true),
          bottombar(Icons.favorite_border_rounded),
          bottombar(Icons.settings),
        ],
      ),

    );
  }
}
Container bottombar(IconData icon,{isSelected=false}){
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(color:isSelected ? Colors.grey[300]:Colors.white,shape: BoxShape.circle),
    child: Icon(icon,color:isSelected ? Colors.black: Colors.grey[600],),


  );}
