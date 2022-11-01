import 'package:flutter/material.dart';

class PhotoDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('photoDisplay'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(//ネットワークから取得したい場合に用いる
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              scale: 2,
            ),
            Image.asset(//ローカルの写真を表示する。pubspec.yamlのassetsにも書き込む
                'images/2022-01-08 (13).png',
              scale: 5,
            ),
          ],
        ),

        // child: const Image(
        //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        // )
      ),
    );
  }
}
