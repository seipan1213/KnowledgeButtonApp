import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kome_app/models/knowledge_button.dart';
import 'package:kome_app/repositories/knowledge_button_repository.dart';

final buttonListViewModelProvider = StateNotifierProvider<ButtonListViewModel,
    AsyncValue<List<KnowledgeButton>>>(
  (ref) => ButtonListViewModel(
    KnowledgeButtonRepository(),
  ),
);

class ButtonListViewModel
    extends StateNotifier<AsyncValue<List<KnowledgeButton>>> {
  final KnowledgeButtonRepository _knowledgeButtonRepository;
  ButtonListViewModel(this._knowledgeButtonRepository)
      : super(const AsyncLoading<List<KnowledgeButton>>()) {
    fetch();
  }

  Future<void> fetch() async {
    try {
      final data = await _knowledgeButtonRepository.fetch();

      state = AsyncData([...data]);
    } catch (error, stack) {
      state = AsyncError(error, stack);
    }
  }
}
