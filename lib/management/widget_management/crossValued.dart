import 'package:flutter/material.dart';

class CrossValued extends StatelessWidget {
  String nameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('cross valued'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text){
                  nameText = text;
                },
                decoration: const InputDecoration(
                  labelText: 'Input',
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CrossValued2(nameText),
                      ),
                    );
                  },
                child: const Text('次の画面へ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CrossValued2 extends StatelessWidget {
  const CrossValued2(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('cross valued'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                name,
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('前の画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}