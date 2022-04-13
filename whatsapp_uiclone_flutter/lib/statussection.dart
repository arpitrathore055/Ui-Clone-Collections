import 'package:flutter/material.dart';

class statussection extends StatefulWidget {
  const statussection({Key? key}) : super(key: key);

  @override
  State<statussection> createState() => _statussectionState();
}

class _statussectionState extends State<statussection> {
  List<String> activestatus = ["Arpit", "Anuj", "Bhavik", "Ayan"];
  List<String> imglst = [
    "https://images.unsplash.com/photo-1597655601841-214a4cfe8b2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3JTIwemVhbGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG5mIOC7U7ws5GDcUxN1AQQtSZDFSy8bb4Zg&usqp=CAU",
    "https://images.unsplash.com/photo-1621331805847-bb27233e4ae1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXZpb258ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1603783033071-551d35a9a29f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbHBhcGVyJTIwaGR8ZW58MHx8MHx8&w=1000&q=80",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.all(8),
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                "My status",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Tap to add status update",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.0,
              ),
              child: Text(
                "Recent updates",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.indigo,
              ),
              contentPadding: EdgeInsets.all(8),
              title: Text(
                "${activestatus[0]}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Today, 8:16 AM",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.indigo,
              ),
              contentPadding: EdgeInsets.all(8),
              title: Text(
                "${activestatus[1]}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Today, 8:16 AM",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.indigo,
              ),
              contentPadding: EdgeInsets.all(8),
              title: Text(
                "${activestatus[2]}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Today, 8:16 AM",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.indigo,
              ),
              contentPadding: EdgeInsets.all(8),
              title: Text(
                "${activestatus[3]}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Today, 8:16 AM",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.0,
              ),
              child: Text(
                "Viewed updates",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.indigo,
              ),
              contentPadding: EdgeInsets.all(8),
              title: Text(
                "${activestatus[3]}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Today, 8:16 AM",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
