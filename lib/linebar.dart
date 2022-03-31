
import 'package:flutter/material.dart';

class linebar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 5,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: 100,
        color: Colors.black,
      ),
    );
  }
}
