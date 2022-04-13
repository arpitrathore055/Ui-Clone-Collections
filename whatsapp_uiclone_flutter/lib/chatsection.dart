import 'package:flutter/material.dart';
import 'searchPage.dart';

class chatsection extends StatefulWidget {
  const chatsection({Key? key}) : super(key: key);

  @override
  State<chatsection> createState() => _chatsectionState();
}

class _chatsectionState extends State<chatsection> {
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
  List<String> imglst = [
    "https://images.unsplash.com/photo-1597655601841-214a4cfe8b2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3JTIwemVhbGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG5mIOC7U7ws5GDcUxN1AQQtSZDFSy8bb4Zg&usqp=CAU",
    "https://images.unsplash.com/photo-1621331805847-bb27233e4ae1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXZpb258ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1603783033071-551d35a9a29f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbHBhcGVyJTIwaGR8ZW58MHx8MHx8&w=1000&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt-Z0pT8UfztDqnY0c0K8c5l-R8x9EyJeSbQ&usqp=CAU",
    "https://images.unsplash.com/photo-1533073526757-2c8ca1df9f1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhbmdlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1492567291473-fe3dfc175b45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8anVtcHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvQRXWBKMqCQ4zssn7Ik5PI7IY0gZwih_i_g&usqp=CAU",
    "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfHwwfHw%3D&w=1000&q=80",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            title: Text(
              "${lst[index]}",
              style: TextStyle(
                fontSize: 19,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Messages and calls are end-to-end...",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imglst[index]),
              radius: 30,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "3:00PM",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.teal,
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: lst.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return searchPage();
          }));
        },
        child: Icon(
          Icons.message,
          size: 20,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
