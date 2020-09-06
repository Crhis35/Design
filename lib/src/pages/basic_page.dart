import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _createImage(),
              _createTitle(),
              _createActions(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
              _createText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://lacf.ca/sites/default/files/images/homepage/banners/P14%20-%20brightcropped%20for%20landing%20page_%20Bridge%20in%20Gablenz%2C%20Germany%2C%20Photo%20by%20Martin%20Damboldt%20from%20Pexels.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con montañas',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un lago en Suiza',
                    style: subTitleStyle,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'CALL'),
        _action(Icons.near_me, 'ROUTE'),
        _action(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Magna quis excepteur aliqua ex ea. Officia laborum dolor eiusmod non reprehenderit laboris qui. Nisi in nostrud cillum occaecat. Deserunt do ipsum qui veniam nisi pariatur reprehenderit amet pariatur aute. Cillum ipsum in id amet reprehenderit est fugiat nisi sit labore laborum esse incididunt. Occaecat dolore in laboris commodo non id consectetur dolor amet magna tempor nostrud. Nulla consequat velit fugiat voluptate amet ut sunt.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
