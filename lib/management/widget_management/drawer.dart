import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}