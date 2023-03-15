// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class InvitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(  
              child:Text(
              "100 Days of code",
              style: TextStyle(
                color: Colors.blue[200],
                fontSize: 20,
              ),
              ),
            ),
          ]
      ),
    );
    
  }
}