import 'package:flutter/material.dart';

class home extends StatelessWidget {
   home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(

        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Card(
            child: Text("data"),
          ),  Card(
            child: Text("data"),
          ),  Card(
            child: Text("data"),
          ),  Card(
            child: Text("data"),
          )
        ],
          )
    );
  }
}
