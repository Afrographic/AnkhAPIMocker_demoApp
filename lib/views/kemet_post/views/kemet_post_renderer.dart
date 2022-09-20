import 'package:ankh_api_mocker/package/AnkhAPIMocker/ankh_api_mocker.dart';
import 'package:ankh_api_mocker/views/kemet_post/model/kemet_post.dart';
import 'package:flutter/material.dart';

import 'kemet_post_component.dart';

class KemetRenderer extends StatefulWidget {
  const KemetRenderer({Key? key}) : super(key: key);

  @override
  State<KemetRenderer> createState() => _KemetRendererState();
}

class _KemetRendererState extends State<KemetRenderer> {
  List<KemetPost> posts = [];
  @override
  void initState() {
    super.initState();
    getPosts();
  }

  getPosts() async {
    dynamic kemetPosts = await AnkhMocker.generateData(
        fieldSchema: KemetPost.ankhInit, count: 25);
    setState(() {
      posts = KemetPost.fromJSONArray(kemetPosts);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return KemetPostComponent(
          kemetPost: posts[index],
        );
      },
    );
  }
}
