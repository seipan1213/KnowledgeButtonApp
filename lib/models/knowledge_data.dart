import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'knowledge_data.freezed.dart';
part 'knowledge_data.g.dart';

@freezed
class KnowledgeData with _$KnowledgeData {
  const factory KnowledgeData({
    required String title,
    required List<String> urls,
  }) = _KnowledgeData;
}
