import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'knowledge_button.freezed.dart';

@freezed
class KnowledgeButton with _$KnowledgeButton {
  const factory KnowledgeButton({
    required String title,
    required List<String> urls,
  }) = _KnowledgeButton;
}
