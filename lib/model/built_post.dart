import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chopper_tutorial/model/properties/content.dart';
import 'package:chopper_tutorial/model/properties/excerpt.dart';
import 'package:chopper_tutorial/model/properties/title.dart';


part 'built_post.g.dart';

abstract class BuiltPost implements Built<BuiltPost, BuiltPostBuilder> {
  @nullable
  int get id;

  @BuiltValueField(wireName: 'featured_image_url')
  String get featuredImageUrl;

  @BuiltValueField(wireName: 'title')
  Title get title;
  @BuiltValueField(wireName: 'content')
  Content get content;
  @BuiltValueField(wireName: 'excerpt')
  Excerpt get excerpt;

  BuiltPost._();

  factory BuiltPost([updates(BuiltPostBuilder b)]) = _$BuiltPost;

  static Serializer<BuiltPost> get serializer => _$builtPostSerializer;
}
