// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knowledge_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KnowledgeButton _$KnowledgeButtonFromJson(Map<String, dynamic> json) {
  return _KnowledgeButton.fromJson(json);
}

/// @nodoc
mixin _$KnowledgeButton {
  String get title => throw _privateConstructorUsedError;
  List<String> get urls => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnowledgeButtonCopyWith<KnowledgeButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeButtonCopyWith<$Res> {
  factory $KnowledgeButtonCopyWith(
          KnowledgeButton value, $Res Function(KnowledgeButton) then) =
      _$KnowledgeButtonCopyWithImpl<$Res, KnowledgeButton>;
  @useResult
  $Res call({String title, List<String> urls, int counter});
}

/// @nodoc
class _$KnowledgeButtonCopyWithImpl<$Res, $Val extends KnowledgeButton>
    implements $KnowledgeButtonCopyWith<$Res> {
  _$KnowledgeButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? urls = null,
    Object? counter = null,
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
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KnowledgeButtonCopyWith<$Res>
    implements $KnowledgeButtonCopyWith<$Res> {
  factory _$$_KnowledgeButtonCopyWith(
          _$_KnowledgeButton value, $Res Function(_$_KnowledgeButton) then) =
      __$$_KnowledgeButtonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> urls, int counter});
}

/// @nodoc
class __$$_KnowledgeButtonCopyWithImpl<$Res>
    extends _$KnowledgeButtonCopyWithImpl<$Res, _$_KnowledgeButton>
    implements _$$_KnowledgeButtonCopyWith<$Res> {
  __$$_KnowledgeButtonCopyWithImpl(
      _$_KnowledgeButton _value, $Res Function(_$_KnowledgeButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? urls = null,
    Object? counter = null,
  }) {
    return _then(_$_KnowledgeButton(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KnowledgeButton
    with DiagnosticableTreeMixin
    implements _KnowledgeButton {
  const _$_KnowledgeButton(
      {required this.title,
      required final List<String> urls,
      required this.counter})
      : _urls = urls;

  factory _$_KnowledgeButton.fromJson(Map<String, dynamic> json) =>
      _$$_KnowledgeButtonFromJson(json);

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
  final int counter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KnowledgeButton(title: $title, urls: $urls, counter: $counter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KnowledgeButton'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('urls', urls))
      ..add(DiagnosticsProperty('counter', counter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KnowledgeButton &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_urls), counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KnowledgeButtonCopyWith<_$_KnowledgeButton> get copyWith =>
      __$$_KnowledgeButtonCopyWithImpl<_$_KnowledgeButton>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KnowledgeButtonToJson(
      this,
    );
  }
}

abstract class _KnowledgeButton implements KnowledgeButton {
  const factory _KnowledgeButton(
      {required final String title,
      required final List<String> urls,
      required final int counter}) = _$_KnowledgeButton;

  factory _KnowledgeButton.fromJson(Map<String, dynamic> json) =
      _$_KnowledgeButton.fromJson;

  @override
  String get title;
  @override
  List<String> get urls;
  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$_KnowledgeButtonCopyWith<_$_KnowledgeButton> get copyWith =>
      throw _privateConstructorUsedError;
}
