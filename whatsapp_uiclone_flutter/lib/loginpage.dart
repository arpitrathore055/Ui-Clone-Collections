import 'package:flutter/material.dart';
import 'callsection.dart';
import 'chatsection.dart';
import 'statussection.dart';
import 'camerasection.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  List<String> lst = [
    "Arpit",
    "Anuj",
    "Ayaan",
    "Bhavik",
    "Apoorv",
    "Bhumik",
    "Suyogya",
    "Shreyansh",
    "Adarsh",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              letterSpacing: 0.4,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 27,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.more_vert,
                size: 27,
                color: Colors.white,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("CHATS"),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 4,
                    ),
                  ],
                ),
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            camerasection(),
            chatsection(),
            statussection(),
            callsection(),
          ],
        ),
      ),
    );
  }
}
