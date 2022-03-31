

import 'package:flutter/material.dart';
import 'candetailspage.dart';

class candleimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            buildcanleimage("1","Elemental Tin Candle","29",context),
            buildcanleimage("2","Summer Candle","23",context),
            buildcanleimage("3","Winter Candle","48",context),
            buildcanleimage("4","Glass Candle","34",context),
            buildcanleimage("5","pot Candle","60",context),
            buildcanleimage("6","Blue Candle","45",context),


          ],
        ),),);
  }

  GestureDetector buildcanleimage(String img,String title,String price, BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CandleDetail(img: img,title: title,price: price,context: context,);
        }));},


      child:Padding(padding:const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 228,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/candles/$img.jpg", fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              " \$ $price",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),),  );
  }
}



