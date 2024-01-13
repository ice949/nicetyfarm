import 'package:flutter/material.dart';
import 'package:nicetyfarm/register_screen.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Login Here!",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color.fromARGB(255, 252, 41, 3),
                      fontWeight: FontWeight.bold)),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 7, 1, 44),
                      fontWeight: FontWeight.bold),
                ),
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
                              suffixIcon: Icon(Icons.email),
                              labelStyle: TextStyle(
                                  fontSize: 10.0, color: Color.fromARGB(255, 252, 41, 3))),
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(255, 252, 41, 3)),
                              ),
                              hintText: "Password",
                              suffixIcon: Icon(Icons.lock),
                              labelStyle: TextStyle(
                                  fontSize: 10.0, color: Color.fromARGB(255, 252, 41, 3))),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color.fromARGB(255, 252, 41, 3)),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 252, 41, 3),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Text("Login",
                                style: TextStyle(
                                  fontSize: 20.0,
                                )),
                          )),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(
                          title: "Login Page",
                        ),
                      ),
                    );
                  },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Color.fromARGB(255, 252, 41, 3)),
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text("Or Continue With", style: TextStyle(color: Color.fromARGB(255, 252, 41, 3))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton
                    (onPressed: () {}, icon: const Icon(Icons.facebook), color: Color.fromARGB(255, 7, 1, 44),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata),
                      color: Color.fromARGB(255, 7, 1, 44),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.apple),
                      color: Color.fromARGB(255, 7, 1, 44),
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
