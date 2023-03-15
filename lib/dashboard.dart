import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// final Uri _url = Uri.parse('https://www.hackerrank.com/auth/login');

class DashPage extends StatelessWidget {
//   launchURL(String url) async {
//     Uri myUri = Uri.parse(url);
//     if (await canLaunchUrl(myUri)) {
//       await launchURL(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

  // Future openBrowserURL({
  //   required String url,
  //   bool inApp = false,
  // }) async {
  //   if (await canLaunch(url)) {
  //     await launch(
  //       url,
  //       forceSafariVC: inApp,
  //       forceWebView: inApp,
  //       enableJavaScript: true,
  //     );
  //   }
  // }

  Future<void> _launchUrl(String url) async {
    Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          ElevatedButton(
            onPressed: 
             () {
            //Respond to button press
            const url = 'https://www.hackerrank.com';
            _launchUrl(url);

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text('Hackerrank'),
          ),
          ElevatedButton(
            onPressed: () {
              // Respond to button press
              const url = 'https://codeforces.com/enter?back=%2F';
               _launchUrl(url);

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text('CodeForces'),
          ),
          ElevatedButton(
            onPressed: () {
              // Respond to button press
              const url = 'https://www.codechef.com/login';
               _launchUrl(url);

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text('CodeChef'),
          ),
          ElevatedButton(
            onPressed: () {
              // Respond to button press
              const url = 'https://leetcode.com/accounts/login/';
               _launchUrl(url);

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text('LeetCode'),
          ),
          ElevatedButton(
            onPressed: () {
              // Respond to button press
              const url =
                  'https://practice.geeksforgeeks.org/problem-of-the-day';
               _launchUrl(url);

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text('Problem of the day'),
          ),
          ElevatedButton(
            onPressed: () async {
              // Respond to button press
              const url = 'https://www.geeksforgeeks.org/data-structures/';
               _launchUrl(url);

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            child: const Text('Resources'),
          ),
          const SizedBox(
            height: 10.0,
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
