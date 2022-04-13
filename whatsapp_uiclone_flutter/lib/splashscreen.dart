import 'dart:async';

import 'package:flutter/material.dart';
import 'loginpage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 2500), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const loginpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: NetworkImage(
                    "https://seeklogo.com/images/W/whatsapp-icon-logo-8CA4FB831E-seeklogo.com.png",
                  ),
                  repeat: ImageRepeat.noRepeat,
                  alignment: Alignment.center,
                  height: 100,
                ),
                SizedBox(
                  height: 270,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "from",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "facebook",
                        style: TextStyle(
                          fontFamily: "horizon",
                          fontSize: 30,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
