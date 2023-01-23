import 'package:flutter/material.dart';

class Match extends StatelessWidget {
  const Match({super.key});

  @override
  Widget build(BuildContext context) {
    const String placeHolder = 'images/loading.gif';
    const String image1 =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Logo_of_AC_Milan.svg/306px-Logo_of_AC_Milan.svg.png';
    const String image2 =
        'https://ichef.bbci.co.uk/ace/standard/480/cpsprodpb/2052/live/4d614ac0-f52c-11eb-8617-87bebb01a75e.jpg';

    return Scaffold(
        appBar: AppBar(
          title: const Text('Match'),
        ),
        body: Card(
          margin: const EdgeInsets.all(10),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FadeInImage.assetNetwork(
                      width: 180,
                      height: 120,
                      placeholder: placeHolder,
                      image: image1),
                  const Text('20:00'),
                  FadeInImage.assetNetwork(
                      width: 180,
                      height: 120,
                      placeholder: placeHolder,
                      image: image2),
                ],
              ),
              const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Viernes 27 de Enero 2023',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Estadio Signal Iduna Park',
              )),
            ],
          ),
        )
      );
  }
}