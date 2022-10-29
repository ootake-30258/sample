import 'package:flutter/material.dart';
import 'package:sample/widget_management/bottomNavigation.dart';
import 'package:sample/widget_management/crossValued.dart';
import 'package:sample/widget_management/photoDisplay.dart';
import 'package:sample/widget_management/sliverAppBar.dart';

import 'drawer.dart';
import 'list.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _nextPageButton(context, "Bottom", const MyStatefulWidget()),
              _nextPageButton(context, "list", const ListPage()),
              _nextPageButton(context, "Drawer", const DrawerPage()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _nextPageButton(context, "SilverAppBar", const SilverAppBar()),
              _nextPageButton(context, "CrossValued", CrossValued()),
              _nextPageButton(context, "PhotoDisplay", PhotoDisplay()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _nextPageButton(context, "Bottom", const MyStatefulWidget()),
              _nextPageButton(context, "list", const ListPage()),
              _nextPageButton(context, "Drawer", const DrawerPage()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _nextPageButton(context, "Bottom", const MyStatefulWidget()),
              _nextPageButton(context, "list", const ListPage()),
              _nextPageButton(context, "Drawer", const DrawerPage()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _nextPageButton(context, "Bottom", const MyStatefulWidget()),
              _nextPageButton(context, "list", const ListPage()),
              _nextPageButton(context, "Drawer", const DrawerPage()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _nextPageButton(context, "Bottom", const MyStatefulWidget()),
              _nextPageButton(context, "list", const ListPage()),
              _nextPageButton(context, "Drawer", const DrawerPage()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _nextPageButton(BuildContext context, String text, Widget widget){
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => widget
          ),
        );
      },
      child: Text(text),//動的
    );
  }
}