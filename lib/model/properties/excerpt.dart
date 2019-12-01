import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'excerpt.g.dart';

abstract class Excerpt implements Built<Excerpt, ExcerptBuilder> {
  Excerpt._();

  factory Excerpt([updates(ExcerptBuilder b)]) = _$Excerpt;

  @BuiltValueField(wireName: 'rendered')
  String get rendered;
  @BuiltValueField(wireName: 'protected')
  bool get protected;

  static Serializer<Excerpt> get serializer => _$excerptSerializer;
}