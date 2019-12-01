import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content.g.dart';

abstract class Content implements Built<Content, ContentBuilder> {
  Content._();

  factory Content([updates(ContentBuilder b)]) = _$Content;

  @BuiltValueField(wireName: 'rendered')
  String get rendered;

  static Serializer<Content> get serializer => _$contentSerializer;
}