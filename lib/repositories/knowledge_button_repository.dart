import 'package:knowledge_button_app/models/knowledge_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class KnowledgeButtonRepository {
  // final _knowledgeButtonApiClient;

  // アクセストークンを.envファイルから読み込み
  //final String authorization = ' Bearer ${dotenv.env['XXXX']}';

  Future<dynamic> fetch() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return apiService.getKnowledgeButtons();
  }

  Future<void> addButtonData(String title, List<String> urls) async {
    await Future.delayed(const Duration(milliseconds: 100));
    for (final url in urls) {
      if (url.isEmpty || !await canLaunchUrlString(url)) {
        throw "can't open urls";
      }
    }

    final knowledgeButton =
        KnowledgeButton(title: title, urls: urls, counter: 0);
    apiService.addKnowledgeButton(knowledgeButton);
  }
}
