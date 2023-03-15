// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors

import 'package:code_assist/account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

Future<void> _launchUrl(String url) async {
  Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}



class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SettingsGroup(
                title: 'General',
                children: <Widget>[
                  buildDarkMode(context),
                  buildLightMode(context),
                  AccountPage(),
                ],
              ),
              const SizedBox(height: 32),
              SettingsGroup(
                title: 'Feedback',
                children: <Widget>[
                  buildReportBug(context),
                  buildSendFeedback(context),
                ],
              )
            ],
          ),
        ),
      );
}

Widget buildDarkMode(BuildContext context) => SimpleSettingsTile(
      title: 'Dark Mode',
      subtitle: '',
      leading: Icon(
        Icons.dark_mode,
        color: Color(0xFF642ef3),
      ),
      onTap: () {},
    );
Widget buildLightMode(BuildContext context) => SimpleSettingsTile(
      title: 'Light Mode',
      subtitle: '',
      leading: Icon(Icons.light_mode, color: Colors.orange),
      onTap: () {},
    );

Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
    title: 'Report a Bug',
    subtitle: '',
    leading: Icon(Icons.bug_report, color: Colors.teal),
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Please click on Acion for the Reporting a Bug"),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {
              const url = 'https://flutter.dev';
              _launchUrl(url);
            },
          ),
        ),
      );
    });
Widget buildSendFeedback(BuildContext context) => SimpleSettingsTile(
    title: 'Send Feedback',
    subtitle: '',
    leading: Icon(
      Icons.thumb_up,
      color: Colors.purple,
    ),
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Please click on Action for giving a Feedback"),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {
              const url = 'https://flutter.dev';
              _launchUrl(url);
            },
          ),
        ),
      );
    });
    
    

// final _lightTheme = ThemeData(
//   brightness: Brightness.light,
//   textTheme: TextTheme(
//     bodyText2: TextStyle(
//       color: Colors.black,
//     ),
//   ),
// );

// final _darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   textTheme: TextTheme(
//     bodyText2: TextStyle(
//       color: Colors.white,
//     ),
//   ),
// );

// class _SettingsPageState extends State<SettingsPage> {
//   bool _switchValue = true;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: _switchValue ? _lightTheme : _darkTheme,
//       home: Scaffold(
//         backgroundColor: _switchValue ? Colors.white : Colors.black,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Theme",
//                 style: TextStyle(fontSize: 20),
//               ),
//               Switch(
//                   value: _switchValue,
//                   activeColor: Colors.red,
//                   activeTrackColor: Colors.black87,
//                   onChanged: (newValue) {
//                     setState(() {
//                       _switchValue = newValue;
//                     });
//                   })
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

