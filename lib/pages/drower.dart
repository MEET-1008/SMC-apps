// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrowerP extends StatefulWidget {
  const DrowerP({super.key});

  @override
  State<DrowerP> createState() => _DrowerPState();
}

class _DrowerPState extends State<DrowerP> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "Meet Vaghasiya",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("Meetvaghasiya329@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(' notifications '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label_rounded),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined),
              title: const Text(' Privacy Policy '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 150,)
,            
                 Column(
               
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromARGB(255, 169, 169, 169),
                      child: Image.asset("assets/logo.png"),
                    )
                  ],
                ),
          ],
        ),
        
      );
  }
}