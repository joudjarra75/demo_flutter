
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xCDb4b7fc),
        title: Text("Home Page"),
      ),
      body: Center(child:
      ElevatedButton(onPressed: (){

      }, child: Text("Logout"))),
    );
  }
}
