import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';

class RiverpodPage extends StatelessWidget {
  const RiverpodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  //ConsumerWidgetを継承させる
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'ボタンを押した回数',
                ),
                Text(
                  '${ref.watch(countProvider)}',
                  //'$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push<void>(
                  MaterialPageRoute(
                    builder: (context) => const MySecondPage(),
                  ),
                );
              },
              child: const Text('次のページ'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(countProvider.notifier).state++;
          //     setState(() {
          //       _counter++;
          //     });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MySecondPage extends ConsumerWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'ボタンを押した回数',
                ),
                Text(
                  '${ref.watch(countProvider)}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('前のページ'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(countProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
