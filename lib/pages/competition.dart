import 'package:flutter/material.dart';

class Competition extends StatelessWidget {
  const Competition({super.key});

  @override
  Widget build(BuildContext context) {
    const String placeholder = 'images/loading.gif';
    List<String> image = [
      'https://cdn.pixabay.com/photo/2014/10/14/20/24/ball-488717_960_720.jpg',
      'https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_960_720.jpg',
      'https://cdn.pixabay.com/photo/2012/11/28/11/11/football-67701_960_720.jpg',
      'https://cdn.pixabay.com/photo/2013/07/25/12/04/basketball-167035_960_720.jpg'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deportes'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          InkWell(
            child: Container(
              child: _card1(placeholder, image),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/matches');
            },
          ),
          InkWell(
            child: Container(
              child: _card2(placeholder, image),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/matches');
            },
          ),
          InkWell(
            child: Container(
              child: _card3(placeholder, image),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/matches');
            },
          ),
          InkWell(
            child: Container(
              child: _card4(placeholder, image),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/matches');
            },
          ),
        ],
      ),
    );
  }

  Widget _card1(placeholder, image) {
    return Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: placeholder,
            image: image[0],
            width: 600,
            height: 240,
          ),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Champions League',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Jornada 4',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }

  Widget _card2(placeholder, image) {
    return Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: placeholder,
            image: image[1],
            width: 600,
            height: 240,
          ),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Bundesliga',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Jornada 15',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }

  Widget _card3(String placeholder, List<String> image) {
    return Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: placeholder,
            image: image[2],
            width: 600,
            height: 240,
          ),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Super Bowl',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'LVII 2023',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }

  Widget _card4(String placeholder, List<String> image) {
    return Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: placeholder,
            image: image[3],
            width: 600,
            height: 240,
          ),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Liga ABE',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Semana 17',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                ),
              ))
        ],
      ),
    );
  }
}