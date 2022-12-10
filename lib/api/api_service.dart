import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kome_app/models/knowledge_button.dart';

final apiService = ApiService();

class ApiService {
  final db = FirebaseFirestore.instance;

  Future<dynamic> getKnowledgeButtons() async {
    var ref = db.collection('knowledgeButtons');
    final docSnap = await ref.get();

    var knowledgeButtons = [];
    for (final snapshot in docSnap.docs) {
      knowledgeButtons.add(snapshot.data());
    }
    return knowledgeButtons;
  }

  Future<void> addKnowledgeButton(KnowledgeButton knowledgeButton) async {
    var docRef = db.collection('knowledgeButtons').doc();
    await docRef.set(knowledgeButton.toJson());
  }
}
