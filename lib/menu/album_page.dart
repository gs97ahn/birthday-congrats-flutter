import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  final String _title = 'Album';
  final List<String> _image = [
    './assets/photo1.jpeg',
    './assets/photo2.jpeg',
    './assets/photo3.jpeg',
    './assets/photo4.png',
    './assets/photo5.png',
    './assets/photo6.jpeg',
    './assets/photo7.jpeg',
    './assets/photo8.jpeg',
    './assets/photo9.jpeg',
    './assets/photo10.jpeg',
  ];

  List<Widget> _items(List itemList) {
    return List<Widget>.generate(itemList.length, (int i) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(itemList[i])
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 174, 190, 191),
          title: Text(_title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 97, 112)
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: CarouselSlider(
                        options: CarouselOptions(
                            height: 350,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            initialPage: 0,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 5),
                            enlargeStrategy: CenterPageEnlargeStrategy.height),
                        items: _items(_image)))
              ],
            ),
          ),
        )
    );
  }
}
