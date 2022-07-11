import 'package:flutter/material.dart';
import './menu/home_page.dart';
import './menu/mailbox_page.dart';
import './menu/album_page.dart';

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({Key? key}) : super(key: key);

  @override
  _MenuNavigationState createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  int selectedIndex = 0;
  late final List<Widget> widgetOptions;

  @override
  void initState() {
    super.initState();
    widgetOptions = <Widget>[
      const HomePage(),
      const AlbumPage(),
      const MailboxPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 174, 190, 191),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 1, 97,112),
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: 'Album'),
          BottomNavigationBarItem(icon: Icon(Icons.sticky_note_2_outlined), label: 'Mailbox'),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}