// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knowledge_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KnowledgeData _$KnowledgeDataFromJson(Map<String, dynamic> json) {
  return _KnowledgeData.fromJson(json);
}

/// @nodoc
mixin _$KnowledgeData {
  String get title => throw _privateConstructorUsedError;
  List<String> get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnowledgeDataCopyWith<KnowledgeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeDataCopyWith<$Res> {
  factory $KnowledgeDataCopyWith(
          KnowledgeData value, $Res Function(KnowledgeData) then) =
      _$KnowledgeDataCopyWithImpl<$Res, KnowledgeData>;
  @useResult
  $Res call({String title, List<String> urls});
}

/// @nodoc
class _$KnowledgeDataCopyWithImpl<$Res, $Val extends KnowledgeData>
    implements $KnowledgeDataCopyWith<$Res> {
  _$KnowledgeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KnowledgeDataCopyWith<$Res>
    implements $KnowledgeDataCopyWith<$Res> {
  factory _$$_KnowledgeDataCopyWith(
          _$_KnowledgeData value, $Res Function(_$_KnowledgeData) then) =
      __$$_KnowledgeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> urls});
}

/// @nodoc
class __$$_KnowledgeDataCopyWithImpl<$Res>
    extends _$KnowledgeDataCopyWithImpl<$Res, _$_KnowledgeData>
    implements _$$_KnowledgeDataCopyWith<$Res> {
  __$$_KnowledgeDataCopyWithImpl(
      _$_KnowledgeData _value, $Res Function(_$_KnowledgeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? urls = null,
  }) {
    return _then(_$_KnowledgeData(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KnowledgeData with DiagnosticableTreeMixin implements _KnowledgeData {
  const _$_KnowledgeData(
      {required this.title, required final List<String> urls})
      : _urls = urls;

  factory _$_KnowledgeData.fromJson(Map<String, dynamic> json) =>
      _$$_KnowledgeDataFromJson(json);

  @override
  final String title;
  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KnowledgeData(title: $title, urls: $urls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KnowledgeData'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('urls', urls));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KnowledgeData &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KnowledgeDataCopyWith<_$_KnowledgeData> get copyWith =>
      __$$_KnowledgeDataCopyWithImpl<_$_KnowledgeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KnowledgeDataToJson(
      this,
    );
  }
}

abstract class _KnowledgeData implements KnowledgeData {
  const factory _KnowledgeData(
      {required final String title,
      required final List<String> urls}) = _$_KnowledgeData;

  factory _KnowledgeData.fromJson(Map<String, dynamic> json) =
      _$_KnowledgeData.fromJson;

  @override
  String get title;
  @override
  List<String> get urls;
  @override
  @JsonKey(ignore: true)
  _$$_KnowledgeDataCopyWith<_$_KnowledgeData> get copyWith =>
      throw _privateConstructorUsedError;
}
