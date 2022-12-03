// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KnowledgeData _$$_KnowledgeDataFromJson(Map<String, dynamic> json) =>
    _$_KnowledgeData(
      title: json['title'] as String,
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_KnowledgeDataToJson(_$_KnowledgeData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'urls': instance.urls,
    };
