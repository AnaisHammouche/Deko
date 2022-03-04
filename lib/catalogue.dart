import 'package:flutter/material.dart';

class MyCatalogue extends StatelessWidget {
  static const tag = 'second_page';

  String title = '';

  MyCatalogue(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
    );
  }
}
