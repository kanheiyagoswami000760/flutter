import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentIDCard(),
    );
  }
}

class StudentIDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student ID Card"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Container(
          width: 280,
          height: 320,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(
                Icons.account_circle,
                size: 120,
                color: Colors.blue,
              ),

              SizedBox(height: 15),

              Text(
                "Kanheiya Goswami",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "B.Tech CSE",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Roll No: 2415000760",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}