import 'package:flutter/material.dart';
import 'package:nicetyfarm/login_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
              child: Image(image: AssetImage('assets/images/onboard_icon.png'))),
          const Padding(
            padding:
                EdgeInsets.only(top: 0, bottom: 16.0, left: 16.0, right: 16.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'WELCOME \n TO SANTORINI',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Experience the beauty of Greece!',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Padding(
            padding:
              const EdgeInsets.only(top: 0, bottom: 16.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(
                          title: "Login Page",
                        ),
                      ),
                    );
                  },
                  // ... other properties
      
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(150, 50)),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                        // color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
