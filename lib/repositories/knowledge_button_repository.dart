import 'package:kome_app/models/knowledge_button.dart';

class KnowledgeButtonRepository {
  // final _knowledgeButtonApiClient;

  // アクセストークンを.envファイルから読み込み
  //final String authorization = ' Bearer ${dotenv.env['XXXX']}';

  Future<dynamic> fetch() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return const KnowledgeButton(title: "hoge", urls: ["urls", "urls"]);
  }
}
