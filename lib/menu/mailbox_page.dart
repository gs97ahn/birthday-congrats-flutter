import 'package:flutter/material.dart';

class MailboxPage extends StatefulWidget {
  const MailboxPage({Key? key}) : super(key: key);

  @override
  _LetterPageState createState() => _LetterPageState();
}

class _LetterPageState extends State<MailboxPage> {
  final String title = 'Mailbox';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 190, 191),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 190, 191),
        title: Text(title,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 1, 97,112)
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
