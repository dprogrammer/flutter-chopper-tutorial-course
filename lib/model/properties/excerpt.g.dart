// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excerpt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Excerpt> _$excerptSerializer = new _$ExcerptSerializer();

class _$ExcerptSerializer implements StructuredSerializer<Excerpt> {
  @override
  final Iterable<Type> types = const [Excerpt, _$Excerpt];
  @override
  final String wireName = 'Excerpt';

  @override
  Iterable<Object> serialize(Serializers serializers, Excerpt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'rendered',
      serializers.serialize(object.rendered,
          specifiedType: const FullType(String)),
      'protected',
      serializers.serialize(object.protected,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Excerpt deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExcerptBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rendered':
          result.rendered = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'protected':
          result.protected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Excerpt extends Excerpt {
  @override
  final String rendered;
  @override
  final bool protected;

  factory _$Excerpt([void Function(ExcerptBuilder) updates]) =>
      (new ExcerptBuilder()..update(updates)).build();

  _$Excerpt._({this.rendered, this.protected}) : super._() {
    if (rendered == null) {
      throw new BuiltValueNullFieldError('Excerpt', 'rendered');
    }
    if (protected == null) {
      throw new BuiltValueNullFieldError('Excerpt', 'protected');
    }
  }

  @override
  Excerpt rebuild(void Function(ExcerptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExcerptBuilder toBuilder() => new ExcerptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Excerpt &&
        rendered == other.rendered &&
        protected == other.protected;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, rendered.hashCode), protected.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Excerpt')
          ..add('rendered', rendered)
          ..add('protected', protected))
        .toString();
  }
}

class ExcerptBuilder implements Builder<Excerpt, ExcerptBuilder> {
  _$Excerpt _$v;

  String _rendered;
  String get rendered => _$this._rendered;
  set rendered(String rendered) => _$this._rendered = rendered;

  bool _protected;
  bool get protected => _$this._protected;
  set protected(bool protected) => _$this._protected = protected;

  ExcerptBuilder();

  ExcerptBuilder get _$this {
    if (_$v != null) {
      _rendered = _$v.rendered;
      _protected = _$v.protected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Excerpt other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Excerpt;
  }

  @override
  void update(void Function(ExcerptBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Excerpt build() {
    final _$result =
        _$v ?? new _$Excerpt._(rendered: rendered, protected: protected);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
