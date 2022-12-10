import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knowledge_button_app/models/knowledge_button.dart';
import 'package:knowledge_button_app/repositories/knowledge_button_repository.dart';

final buttonListViewModelProvider = StateNotifierProvider<ButtonListViewModel,
    AsyncValue<List<KnowledgeButton>>>(
  (ref) => ButtonListViewModel(
    KnowledgeButtonRepository(),
  ),
);

class ButtonListViewModel
    extends StateNotifier<AsyncValue<List<KnowledgeButton>>> {
  ButtonListViewModel(this._knowledgeButtonRepository)
      : super(const AsyncLoading<List<KnowledgeButton>>()) {
    fetch();
  }

  final KnowledgeButtonRepository _knowledgeButtonRepository;

  Future<void> fetch() async {
    try {
      final data = await _knowledgeButtonRepository.fetch();

      state = AsyncData([...data]);
    } catch (error, stack) {
      state = AsyncError(error, stack);
    }
  }

  Future<void> addButtonData(String title, List<String> urls) async {
    await _knowledgeButtonRepository.addButtonData(title, urls);
    fetch();
  }
}
