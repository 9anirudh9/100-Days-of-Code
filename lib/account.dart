import 'package:code_assist/widget/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> _launchUrl(String url) async {
  Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}


class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
    
        title: 'Account Settings',
        subtitle: 'Privacy, Security, Language',
        leading: Icon(Icons.person,
        color: Colors.green),
       onTap: () {
         
       },
      
      child: SettingsScreen(
        
        title: 'Account Settings',
        children: <Widget>[
          buildPrivacy(context),
          buildSecurity(context),
          buildAccountInfo(context),
        ],
      ),
      );
}
Widget buildPrivacy(BuildContext context) => SimpleSettingsTile(
      title: 'Privacy',
      subtitle: '',
      leading: Icon(Icons.lock,
        color: Colors.blue),
        onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Please click on Acion for Account and Password changes"),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {
              const url = 'https://firebase.google.com/';
              _launchUrl(url);
            },
          ),
        ),
      );
    }
      
      // onTap: () => Utils.showSnackBar(context, 'Clicked Report a Bug'),
    );
Widget buildSecurity(BuildContext context) => SimpleSettingsTile(
      title: 'Secuity',
      subtitle: '',
      leading: Icon(Icons.security,
        color: Colors.red),
       onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Please click on Acion for the changing Password"),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {
              const url = 'https://firebase.google.com/';
              _launchUrl(url);
            },
          ),
        ),
      );
    }
      
      // onTap: () => Utils.showSnackBar(context, 'Clicked Report a Bug'),
    );
Widget buildAccountInfo(BuildContext context) => SimpleSettingsTile(
      title: 'Account Info',
      subtitle: '',
      leading: Icon(Icons.text_snippet,
        color: Colors.purple),
        onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Please click on Acion for getting your Account Info"),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {
              const url = 'https://firebase.google.com/';
              _launchUrl(url);
            },
          ),
        ),
      );
    }
      
      // onTap: () => Utils.showSnackBar(context, 'Clicked Report a Bug'),
    );
