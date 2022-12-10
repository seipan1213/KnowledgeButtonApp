import 'package:knowledge_button_app/api/api_service.dart';
import 'package:knowledge_button_app/models/knowledge_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class KnowledgeButtonRepository {
  // final _knowledgeButtonApiClient;

  // アクセストークンを.envファイルから読み込み
  //final String authorization = ' Bearer ${dotenv.env['XXXX']}';

  Future<dynamic> fetch() async {
    final json = await apiService.getKnowledgeButtons();
    return json.map((e) => KnowledgeButton.fromJson(e)).toList();
    ;
  }

  Future<void> addButtonData(String title, List<String> urls) async {
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
