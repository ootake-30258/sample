import 'package:flutter/material.dart';
import 'package:sample/stateful.dart';

import 'firstPage.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('secondPage'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _nextPageButton(context, "次の画面へ"),
          _nextPageButton(context, "次の画面へ"),
          _nextPageButton(context, "次の画面へ"),
        ],
      ),
    );
  }

  Widget _nextPageButton(BuildContext context, String text){
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyStatefulWidget()
          ),
        );
      },
      child: Text("次の画面へ"),
    );
  }
}