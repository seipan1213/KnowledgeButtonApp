import 'package:kome_app/models/knowledge_button.dart';

class KnowledgeButtonRepository {
  // final _knowledgeButtonApiClient;

  // アクセストークンを.envファイルから読み込み
  //final String authorization = ' Bearer ${dotenv.env['XXXX']}';

  Future<dynamic> fetch() async {
    await Future.delayed(const Duration(milliseconds: 100));
    final value = [
      {
        "title": "flutter",
        "urls": [
          "https://www.zeroichi.biz/blog/1525/",
          "https://flutter.ctrnost.com/"
        ],
        "counter": 0,
      },
      {
        "title": "C++",
        "urls": [
          "https://learn.microsoft.com/ja-jp/cpp/?view=msvc-170",
          "https://learn.microsoft.com/ja-jp/cpp/cpp/?view=msvc-170"
        ],
        "counter": 0,
      },
      {
        "title": "animal",
        "urls": [
          "https://ja.wikipedia.org/wiki/%E3%83%9A%E3%83%B3%E3%82%AE%E3%83%B3",
          "https://ja.wikipedia.org/wiki/%E3%83%8D%E3%82%B3"
        ],
        "counter": 0,
      }
    ];
    return value.map((e) => KnowledgeButton.fromJson(e)).toList();
  }
}
