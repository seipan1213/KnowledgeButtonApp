import 'package:kome_app/models/knowledge_button.dart';

class KnowledgeButtonRepository {
  // final _knowledgeButtonApiClient;

  // アクセストークンを.envファイルから読み込み
  //final String authorization = ' Bearer ${dotenv.env['XXXX']}';

  Future<dynamic> fetch() async {
    await Future.delayed(const Duration(milliseconds: 100));
    final value = [
      {
        "title": "hoge1",
        "urls": ["a1", "b1"]
      },
      {
        "title": "hoge2",
        "urls": ["a2", "b2"]
      },
      {
        "title": "hoge3",
        "urls": ["a3", "b3"]
      }
    ];
    return value
        .map((e) => KnowledgeButton.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
