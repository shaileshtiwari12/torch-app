

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
   const MyAppBar({
    super.key, this.myTitle,
  });

  // ignore: prefer_typing_uninitialized_variables
  final myTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
       backgroundColor: const Color.fromARGB(255, 207, 147, 68),
      leading: const Icon(Icons.arrow_circle_right),
      title: myTitle,
      actions: const [
        Icon(Icons.search),
      ],
    );
  }
}