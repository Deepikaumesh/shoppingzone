import 'package:flutter/material.dart';

import 'offerdetails.dart';

class OfferPics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            OfferPics1("np1", "Lakme", "NailPolish", "70", context),
            OfferPics1("fc", "Maybelline", "Foundation", "60", context),
            OfferPics1("pm", "Deo", "Perfume", "80", context),
            OfferPics1("ls", "Day Dream", "Lipstick", "60", context),
            OfferPics1("bcr", "Mac", "Body Cream", "90", context),
          ],
        ),
      ),
    );
  }
}

GestureDetector OfferPics1(
    String img1,
    String name,
    String about,
    String price,
    BuildContext context,
    ) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return OfferDetail(
            img1: img1,
            name: name,
            about: about,
            price: price,
            context: context);
      }));
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 230,
                width: 200,
                padding: EdgeInsets.only(left: 7),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        "assets/candles/$img1.jpg",
                        height: 160,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          name,
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                        Text(
                          about,
                          style: TextStyle(fontSize: 16, color: Colors.black26),
                        ),
                        SizedBox(height: 85),
                        Text(
                          "\$ $price",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
