import 'package:flutter/material.dart';

import 'video_detail_page.dart';


// 最初に呼ばれるmain -> MyApp呼び出し -> class MyApp呼び出し ->MaterialApp ->AppBar/Body構成
void main() {
  runApp(MyApp());
}

// 【レス】--------
class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.videocam,
          ),
          title: const Text(
            "TubeApp",
          ),
          actions: <Widget>[
            SizedBox(
              width: 90,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  // TODO:
                },
              ),
            ),
            SizedBox(
              width: 70,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  // TODO:
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 40,
                      child: Text("サムネイル"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          "私の動画ファイル一覧集",
                        ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text(
                                "このファイル集を登録する",
                              ),
                            ],
                          ),
                          onPressed: () {
                            // TODO:
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        // TODO: 画面遷移
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoDetailPage(),
                            ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Text("動画のサムネイル"),
                      title: Column(
                        children: <Widget>[
                          Text(
                            'ファイル内【動画】リスト',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                '10回再生',
                                style: TextStyle(
                                  fontSize: 11,
                                ),

                              ),
                              Text(
                                '6日前',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
