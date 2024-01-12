import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRect(
                // borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.ac_unit,
                    size: 70,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 25.0, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Email",
                              labelStyle: TextStyle(
                                
                                  fontSize: 20.0, color: Colors.blue)),
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              labelStyle: TextStyle(
                                
                                  fontSize: 20.0, color: Colors.blue)),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Login",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.blue))),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
