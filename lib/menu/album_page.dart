import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  final List<String> _image = List<String>.generate(12, (i) => './assets/photo${i+1}.jpeg');

  List<Widget> _items(List itemList) {
    return List<Widget>.generate(itemList.length, (i) {
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
          title: const Text('Album',
            style: TextStyle(
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
                            height: 300,
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
