// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        width: double.infinity,
        height: 200,
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/unsplash.jpeg'),
                ),
              ),
            ),
            Text(
              "100 Days of code",
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 20,
              ),
            ),
            Text(
              "Nobody does it better",
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 14,
              ),
            ),
          ],
        ));
  }
}
