import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String appBarTitle = "Flutter Profile";
  Color appBarColor = Colors.blue;
  String buttonText = "Follow";

  void followUser() {
    setState(() {
      appBarTitle = "Following";
      appBarColor = Colors.green;
      buttonText = "Following";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: appBarColor,
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 320,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const CircleAvatar(
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Kanheiya Goswami",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "kanheiya@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: followUser,
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}