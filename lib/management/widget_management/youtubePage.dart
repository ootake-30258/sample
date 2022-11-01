import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  final List<String> list = [
    'faevcaeaecaerafrecaverfarcaerva',
    'b',
    'c',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '凡才プログラマーKBOY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.ondemand_video_sharp),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, int index) {
            return _messageItem(
              'images/2022-01-08 (13).png',
              list[index],
              '1053回視聴　5日前',
            );
          },
        ),
      ),
    );
  }

  Widget _messageItem(String picture, String text1, String text2) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            //ローカルの写真を表示する。pubspec.yamlのassetsにも書き込む
            'images/2022-01-08 (13).png',
            width: 160,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
