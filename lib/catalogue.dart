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
      appBar: AppBar(title: Text(title), backgroundColor: Colors.green.shade800),


      floatingActionButton: FloatingActionButton.extended(
              icon: const Icon(Icons.arrow_forward_rounded),
              backgroundColor: Colors.green.shade800,
              onPressed: () {
                
              }, label: const Text('Suite'),
            ),



     body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/fauteuil.png')),
    )),
    Container(
      padding: const EdgeInsets.all(8),
       decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/canape.png')),
    )),
    Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/tableBasse.png')),
    )),
    Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/chaise.png')),
    )),
    Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/vase.png')),
    ) ),
    Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/lit.png')),
    ) ),
  ],
),




      
    );
  }
}
