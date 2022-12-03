import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'knowledge_button.freezed.dart';
part 'knowledge_button.g.dart';

@freezed
class KnowledgeButton with _$KnowledgeButton {
  const factory KnowledgeButton({
    required String title,
    required List<String> urls,
    required int counter,
  }) = _KnowledgeButton;

  factory KnowledgeButton.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeButtonFromJson(json);
}
