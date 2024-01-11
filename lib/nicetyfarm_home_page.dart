import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         const Icon(
            Icons.mic, size: 100, color: Colors.blue,
            ),
         const Text(
            'Experience', style: TextStyle(fontSize: 30, color: Colors.blueGrey),
          ),
         const Text(
            'Extended Reality', style: TextStyle(fontSize: 30, color: Colors.blueGrey),
          ),
         const Text(
            'Experience the power of limitless possibilities', style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              ElevatedButton(
                onPressed: () {}, 
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),),
                ElevatedButton(
                onPressed: () {}, 
                child:const Text('Register'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),),
                
            ],
          )
        ],
      ),
    );
  }
}
