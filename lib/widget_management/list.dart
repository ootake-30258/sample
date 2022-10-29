import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {

  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var list = [
    "メッセージ1",
    "メッセージ2",
    "メッセージ3",
    "メッセージ4",
    "メッセージ5",
    "メッセージ6",
    "メッセージ7",
    "メッセージ8",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, int index) {
          return _messageItem(list[index]);
        },
      ),
    );
  }

  Widget _messageItem(String title) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        onTap: () {
          print("onTap called.");
        }, // タップ
        onLongPress: () {
          print("onLongTap called.");
        }, // 長押し
      ),
    );
  }
}
