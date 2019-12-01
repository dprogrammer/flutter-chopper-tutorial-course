import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

import 'data/post_api_service.dart';
import 'model/built_post.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;

  const SinglePostPage({
    Key key,
    this.postId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chopper Wordpress'),
      ),
      body: FutureBuilder<Response<BuiltPost>>(
        future: Provider.of<PostApiService>(context).getPost(postId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final post = snapshot.data.body;
            return _buildPost(post);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Padding _buildPost(BuiltPost post) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(post.featuredImageUrl, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(
              post.title.rendered,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Html(
              defaultTextStyle: TextStyle(fontSize: 18.0),
              data: post.content.rendered,
            ),
          ],
        ),
      ),
    );
  }
}