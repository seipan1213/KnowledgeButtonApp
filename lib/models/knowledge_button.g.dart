// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KnowledgeButton _$$_KnowledgeButtonFromJson(Map<String, dynamic> json) =>
    _$_KnowledgeButton(
      title: json['title'] as String,
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_KnowledgeButtonToJson(_$_KnowledgeButton instance) =>
    <String, dynamic>{
      'title': instance.title,
      'urls': instance.urls,
    };
