import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {

  int selectedIndex = 0;
  List<Widget> _tabs = [
    Text('ホーム'),
    Text('メッセージ'),
    Text('アカウント'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav Bar'),
      ),
      body: Text('ホーム画面'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('ホーム')),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('メッセージ')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('アカウント')),
        ],
      ),
    );
  }
}