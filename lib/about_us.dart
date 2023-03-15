// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AbUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    Scaffold(
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Align(
              // alignment: Alignment.topCenter,
              child: Column(children: [
                Text(
                  'DEVELOPERS:',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 35
                  )
                  
                ),
                const Text('                    '),
                const Text('20881A1207-Anumula Spoorthy',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const Text('20881A1206-Anirudh Cidiri',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const Text('20881A1209-Bandi Sahith',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const Text('20881A1253-Sri Harshini',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const Text('20881A1258-Uppu Karthikeya',
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const Text('              '),
                
                ListTile(
                  
                  leading: Icon(Icons.info, color: Colors.blue),
                  onTap: () {
                    showAboutDialog(context: context,
                    applicationIcon: FlutterLogo(),
                    applicationName: 'About US',
                    applicationVersion: '1.0.1',
                    applicationLegalese: 'Developed by IT-A Students');
                  },
                  title: Text('ABOUT US'
                  ),
                )
              ])),
        ),
      ));
    
  }

