import 'package:flutter/material.dart';
// import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class IconWidget extends StatefulWidget {
  final IconData icon;
  final Color color;
  const IconWidget({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      shape:  BoxShape.circle,
      color: color,
    ),
    child: Icon(icon, color: Colors.white,),
  );
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    
    throw UnimplementedError();
  }
}
