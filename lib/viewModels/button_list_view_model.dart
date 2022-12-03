import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kome_app/models/knowledge_data.dart';
import 'package:kome_app/repositories/knowledge_data_repository.dart';

final buttonListViewModelProvider =
    StateNotifierProvider<ButtonListViewModel, AsyncValue<List<KnowledgeData>>>(
  (ref) => ButtonListViewModel(
    KnowledgeDataRepository(),
  ),
);

class ButtonListViewModel
    extends StateNotifier<AsyncValue<List<KnowledgeData>>> {
  final KnowledgeDataRepository _knowledgeDataRepository;
  ButtonListViewModel(this._knowledgeDataRepository)
      : super(const AsyncLoading<List<KnowledgeData>>()) {
    fetch();
  }

  Future<void> fetch() async {
    try {
      final data = await _knowledgeDataRepository.fetch();

      state = AsyncData([...data]);
    } catch (error, stack) {
      state = AsyncError(error, stack);
    }
  }
}
