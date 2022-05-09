// class favoris extends StatelessWidget {
//   const favoris{Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//     backgroundColor: Colors.white,
//     );
//   }
// }

import 'package:flutter/material.dart';

class Myfavoris extends StatelessWidget {
  static const tag = 'troisieme_page';

  String title = '';

  Myfavoris(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title, style: const TextStyle(
    color: Colors.red, fontWeight: FontWeight.bold )), backgroundColor: Colors.white,));
  }
}
