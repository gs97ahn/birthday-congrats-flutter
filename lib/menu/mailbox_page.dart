import 'package:flutter/material.dart';

class MailboxPage extends StatefulWidget {
  const MailboxPage({Key? key}) : super(key: key);

  @override
  _LetterPageState createState() => _LetterPageState();
}

class _LetterPageState extends State<MailboxPage> {
  final List<String> _toHY = [
    ''
  ];
  final List<String> _toEJ = [
    ''
  ];


  List<Widget> _letter(List letterList) {
    return List<Widget>.generate(letterList.length, (i) {
      return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.yellow[200],
                  child: Text(letterList[i],
                      style: TextStyle(color: Colors.grey[700], fontSize: 30))
              )
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 190, 191),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 190, 191),
        title: const Text('Mailbox',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 1, 97,112)
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _letter(_toEJ)
          ),
        ),
      )
    );
  }
}
