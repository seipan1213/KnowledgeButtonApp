import 'package:kome_app/models/knowledge_data.dart';

class KnowledgeDataRepository {
  // final _knowledgeDataApiClient;

  // アクセストークンを.envファイルから読み込み
  //final String authorization = ' Bearer ${dotenv.env['XXXX']}';

  Future<dynamic> fetch() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return const KnowledgeData(title: "hoge", urls: ["urls", "urls"]);
  }
}
