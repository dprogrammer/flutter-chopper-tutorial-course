// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltPost> _$builtPostSerializer = new _$BuiltPostSerializer();

class _$BuiltPostSerializer implements StructuredSerializer<BuiltPost> {
  @override
  final Iterable<Type> types = const [BuiltPost, _$BuiltPost];
  @override
  final String wireName = 'BuiltPost';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'featured_image_url',
      serializers.serialize(object.featuredImageUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title, specifiedType: const FullType(Title)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(Content)),
      'excerpt',
      serializers.serialize(object.excerpt,
          specifiedType: const FullType(Excerpt)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'featured_image_url':
          result.featuredImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
              specifiedType: const FullType(Title)) as Title);
          break;
        case 'content':
          result.content.replace(serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content);
          break;
        case 'excerpt':
          result.excerpt.replace(serializers.deserialize(value,
              specifiedType: const FullType(Excerpt)) as Excerpt);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltPost extends BuiltPost {
  @override
  final int id;
  @override
  final String featuredImageUrl;
  @override
  final Title title;
  @override
  final Content content;
  @override
  final Excerpt excerpt;

  factory _$BuiltPost([void Function(BuiltPostBuilder) updates]) =>
      (new BuiltPostBuilder()..update(updates)).build();

  _$BuiltPost._(
      {this.id, this.featuredImageUrl, this.title, this.content, this.excerpt})
      : super._() {
    if (featuredImageUrl == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'featuredImageUrl');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'title');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'content');
    }
    if (excerpt == null) {
      throw new BuiltValueNullFieldError('BuiltPost', 'excerpt');
    }
  }

  @override
  BuiltPost rebuild(void Function(BuiltPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPostBuilder toBuilder() => new BuiltPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPost &&
        id == other.id &&
        featuredImageUrl == other.featuredImageUrl &&
        title == other.title &&
        content == other.content &&
        excerpt == other.excerpt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), featuredImageUrl.hashCode),
                title.hashCode),
            content.hashCode),
        excerpt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltPost')
          ..add('id', id)
          ..add('featuredImageUrl', featuredImageUrl)
          ..add('title', title)
          ..add('content', content)
          ..add('excerpt', excerpt))
        .toString();
  }
}

class BuiltPostBuilder implements Builder<BuiltPost, BuiltPostBuilder> {
  _$BuiltPost _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _featuredImageUrl;
  String get featuredImageUrl => _$this._featuredImageUrl;
  set featuredImageUrl(String featuredImageUrl) =>
      _$this._featuredImageUrl = featuredImageUrl;

  TitleBuilder _title;
  TitleBuilder get title => _$this._title ??= new TitleBuilder();
  set title(TitleBuilder title) => _$this._title = title;

  ContentBuilder _content;
  ContentBuilder get content => _$this._content ??= new ContentBuilder();
  set content(ContentBuilder content) => _$this._content = content;

  ExcerptBuilder _excerpt;
  ExcerptBuilder get excerpt => _$this._excerpt ??= new ExcerptBuilder();
  set excerpt(ExcerptBuilder excerpt) => _$this._excerpt = excerpt;

  BuiltPostBuilder();

  BuiltPostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _featuredImageUrl = _$v.featuredImageUrl;
      _title = _$v.title?.toBuilder();
      _content = _$v.content?.toBuilder();
      _excerpt = _$v.excerpt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltPost;
  }

  @override
  void update(void Function(BuiltPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPost build() {
    _$BuiltPost _$result;
    try {
      _$result = _$v ??
          new _$BuiltPost._(
              id: id,
              featuredImageUrl: featuredImageUrl,
              title: title.build(),
              content: content.build(),
              excerpt: excerpt.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'title';
        title.build();
        _$failedField = 'content';
        content.build();
        _$failedField = 'excerpt';
        excerpt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
