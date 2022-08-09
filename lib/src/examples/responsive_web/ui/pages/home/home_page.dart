import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://wallpaperaccess.com/full/7794848.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
