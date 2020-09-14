import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vazil App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LinksLandingPage(),
    );
  }
}

class LinksLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 35), //agregar un espacio
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://www.bootgum.com/wp-content/uploads/2018/07/ClockTicking550Watermarked.gif',
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), //agregar espacio al texto
            child: Text('@servazi'),
          ),
          LinkButton(
            title: 'Youtube',
            url: 'https://www.youtube.com/watch?v=DyDfgMOUjCI',
          ),
          LinkButton(
            title: 'Youtube',
            url: 'https://www.youtube.com/watch?v=DyDfgMOUjCI',
          ),
          LinkButton(
            title: 'Youtube',
            url: 'https://www.youtube.com/watch?v=DyDfgMOUjCI',
          ),
          LinkButton(
            title: 'Youtube',
            url: 'https://www.youtube.com/watch?v=DyDfgMOUjCI',
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min, // centrarlo
            children: [
              Text('Hecho en Flutter'),
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://roszkowski.dev/images/2020-05-04/flutter_logo_leg.gif',
                height: 25,
                width: 25,
              ),
            ],
          ),
          SizedBox(height: 25)
        ],
      ),
    );
  }
}

// Extract Widget del SizedBox para crear una clase replicable
class LinkButton extends StatelessWidget {
  const LinkButton({
    Key key,
    @required this.title,
    @required this.url,
  }) : super(key: key);
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; // variable responsibe
    final smallWidth = width * 0.95;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width > 600
            ? 600
            : smallWidth, //hacer que el boton sea responsive pero con limite de 600
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20), //hacer el boton mas alto
          onPressed: () {
            launch(url);
          },
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white), //hacer que el texto del boton sea blanco
          ),
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
