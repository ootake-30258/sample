import 'package:flutter/material.dart';

class SilverAppBar extends StatelessWidget {
  const SilverAppBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('SliverAppBar'),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              snap: false,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo'),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 500.0,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('list item $index', style: const TextStyle(fontSize: 30),),
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
