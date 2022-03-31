import 'package:flutter/material.dart';

import 'bottombar.dart';
import 'candleimage.dart';
import 'columnattop.dart';
import 'flatbuttons.dart';
import 'linebar.dart';
import 'offerpics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrangeAccent[200],
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
              padding: EdgeInsets.only(left: 15),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
                padding: EdgeInsets.only(right: 35),
              ),
            ],
          ),
          backgroundColor: Colors.deepOrangeAccent[200],
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "ShoppingZone",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 21,
              ),
              BuildFlatButton(),
              SizedBox(
                height: 17,
              ),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange.shade50,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          BuildColumnAtTop(),
                          SizedBox(
                            height: 20,
                          ),
                          candleimage(),
                          SizedBox(
                            height: 20,
                          ),
                          linebar(),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text("Holiday Special",style: TextStyle(fontSize: 24),),
                              Spacer(),
                              Text("View all",style: TextStyle(fontSize: 20),)
                            ],

                          ),
                          OfferPics(),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ));
  }
}
