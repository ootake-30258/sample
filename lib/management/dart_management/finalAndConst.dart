class FinalAndConst{
  void main(){
    //定数,実行時に値を確定
    final name1 = '定数';//宣言と同時に初期化
    //name1 = 'りんご';はできない

    //静的定数、コンパイル時に値を確定
    const name2 = '静的変数';//宣言と同時に初期化
    //name2 = 'あいうえお';はできない

    final list = [];//定数であれば宣言可能,addも可能
    //static const list = [];静的変数は宣言できない
    //List型は動的であるから

    print(name1);
    print(name2);
  }
}

class Test{
  Test(this.a);//
  //Test(this.a,this.b);//静的定数はコンストラクタでの代入はできない
  final a;//実行時に値が決まるのでOK
  //static const b;//コンパイル時に値が決まっていないのでNG
  static const b = 'aaa';
}