import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebasePage extends StatefulWidget {
  const FirebasePage({super.key});

  @override
  State<FirebasePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FirebasePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {//インスタンスが必要なくなったとき、つまり画面切り替えの時消す
    _controller.dispose();//キーボードを消す
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(//OS に関わらず適切な領域にウィジェットを収めてくれる
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(//隙間を埋めるように大きくする
              child: Container(
                height: double.infinity,
                alignment: Alignment.topCenter,
                child: StreamBuilder<QuerySnapshot>(//StreamBuilderにStreamの型としてQuerySnapshotを明示
                  stream: FirebaseFirestore.instance
                      .collection('dream')
                      .orderBy('createdAt')
                      .snapshots(),//Cloud FirestoreからStreamでデータを取得
                  builder: (context, snapshot) {//snapshotにはデータ取得の一連の処理が入っている
                    if (snapshot.hasError) {
                      return const Text('エラーが発生しました');
                    }
                    if (!snapshot.hasData) {//データが届くまで
                      return const Center(child: CircularProgressIndicator());//クルクルを表示
                    }
                    final list = snapshot.requireData.docs//ドキュメントのリストを取得
                        .map<String>((DocumentSnapshot document) {
                      final documentData =
                      document.data()! as Map<String, dynamic>;
                      return documentData['content']! as String;
                    }).toList();

                    final reverseList = list.reversed.toList();//逆順のリストを作成

                    return ListView.builder(
                      itemCount: reverseList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Text(
                            reverseList[index],
                            style: const TextStyle(fontSize: 30),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,//入力するやつ
                    autofocus: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final document = <String, dynamic>{//保存するデータ
                      'content': _controller.text,
                      'createdAt': Timestamp.fromDate(DateTime.now()),//現在の時間
                    };
                    FirebaseFirestore.instance
                        .collection('dream')
                        .doc()
                        .set(document);//データ保存処理
                    setState(_controller.clear);
                  },
                  child: const Text('送信'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
