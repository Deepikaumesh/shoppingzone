import 'package:flutter/material.dart';

class OfferDetail extends StatelessWidget {
  final String img1;
  final String name;
  final String about;
  final String price;
  final BuildContext context;

  OfferDetail(
      {required this.img1,
        required this.name,
        required this.about,
        required this.price,
        required this.context}); //curly braces used for making named arguments rather than positional argmnts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/candles/$img1.jpg",
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: EdgeInsets.only(left: 18, top: 60),
            icon: Icon(
              Icons.close,
              color: Colors.grey,
              size: 36,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.deepOrange.shade50,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(35),
                  )),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "$name",
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              Text(
                                "$about",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("SIZE"),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "16 OZ",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("QTY"),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          ListTile(
                            leading: Text(
                              "Details",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          ListTile(
                            leading: Text(
                              "Shipping and returns",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(height:20 ,),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 20,
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.deepOrangeAccent[100],
                                    size: 35,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FlatButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "Add to Basket",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  color: Colors.deepOrangeAccent[100],
                                  shape: StadiumBorder(),
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                      MediaQuery.of(context).size.width /
                                          5.9,
                                      vertical: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
