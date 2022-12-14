import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'knowledge_button.freezed.dart';
part 'knowledge_button.g.dart';

@unfreezed
class KnowledgeButton with _$KnowledgeButton {
  factory KnowledgeButton({
    required final String title,
    required final List<String> urls,
    required int counter,
  }) = _KnowledgeButton;

  factory KnowledgeButton.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeButtonFromJson(json);
}
