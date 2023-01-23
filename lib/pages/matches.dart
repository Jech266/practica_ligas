import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    const String placeHolder = 'images/giphy.gif';
    const String image =
        'https://cdn.pixabay.com/photo/2014/10/14/20/24/ball-488717_960_720.jpg';
    return Scaffold(
        appBar: AppBar(
          title: const Text('Matches'),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisCount: 2,
          children: [
            InkWell(
              child: const BigCard(
                  placeHolder: placeHolder, image: image, numero: '1'),
              onTap: () {
                Navigator.pushNamed(context, '/match');
              },
            ),
            InkWell(
              child: const BigCard(
                  placeHolder: placeHolder, image: image, numero: '2'),
              onTap: () {
                Navigator.pushNamed(context, '/match');
              },
            ),
            InkWell(
              child: const BigCard(
                  placeHolder: placeHolder, image: image, numero: '3'),
              onTap: () {
                Navigator.pushNamed(context, '/match');
              },
            ),
            InkWell(
              child: const BigCard(
                  placeHolder: placeHolder, image: image, numero: '4'),
              onTap: () {
                Navigator.pushNamed(context, '/match');
              },
            ),
            InkWell(
              child: const BigCard(
                  placeHolder: placeHolder, image: image, numero: '5'),
              onTap: () {
                Navigator.pushNamed(context, '/match');
              },
            ),
            InkWell(
              child: const BigCard(
                  placeHolder: placeHolder, image: image, numero: '6'),
              onTap: () {
                Navigator.pushNamed(context, '/match');
              },
            ),
          ],
        ));
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.placeHolder,
    required this.image,
    required this.numero,
  });
  final String placeHolder;
  final String image;
  final String numero;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.network(image),
            title: Text("Partido $numero"),
            subtitle: const Text('AC milan - Torrenham'),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
                margin: const EdgeInsets.all(8),
                child: const Text('Proximamente')),
          )
        ],
      ),
    );
  }
}