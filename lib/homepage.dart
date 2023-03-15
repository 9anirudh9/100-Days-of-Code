// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:code_assist/settings.dart';
import 'package:code_assist/stcal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'constants/routes.dart';
import 'dashboard.dart';
import 'main.dart';
import 'my_drawer_header.dart';
import 'notes.dart';
import 'invites.dart';

class HomePageD extends StatefulWidget {
  @override
  State<HomePageD> createState() => _HomePageDState();
}

class _HomePageDState extends State<HomePageD> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var container;
    if (currentPage == DrawerSections.streakcalender) {
      container = StrCalPage();
    } else if (currentPage == DrawerSections.dashboard) {
      container = DashPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.aboutUs) {
      container = AbUsPage();
    } else if (currentPage == DrawerSections.invite) {
      container = InvitePage();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('100 Days of Code'),
        actions: [
          PopupMenuButton<MenuAction>(
            onSelected: (value) async {
              switch (value) {
                case MenuAction.logout:
                  final shouldLogout = await showLogoutDialog(context);
                  if (shouldLogout) {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      loginRoute,
                      (_) => false,
                    );
                  }
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem<MenuAction>(
                  value: MenuAction.logout,
                  child: Text('Logout'),
                )
              ];
            },
          )
        ],
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        //shows list of menu drawer
        children: [
          menuItem(1, "Streak Calender", Icons.calendar_month,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(3, "Notes", Icons.note_alt,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(4, "Settings", Icons.settings,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(5, "About Us", Icons.info_outline,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(6, "Invite", Icons.insert_link,
              currentPage == DrawerSections.dashboard ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.transparent : Colors.white70,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.streakcalender;
            } else if (id == 2) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 3) {
              currentPage = DrawerSections.notes;
            } else if (id == 4) {
              currentPage = DrawerSections.settings;
            } else if (id == 5) {
              currentPage = DrawerSections.aboutUs;
            } else if (id == 6) {
              currentPage = DrawerSections.invite;
            }
          });
        },
        child: Padding(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black87,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  streakcalender,
  dashboard,
  notes,
  settings,
  aboutUs,
  invite,
}
