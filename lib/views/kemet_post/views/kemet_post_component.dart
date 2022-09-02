// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables

import 'package:ankh_api_mocker/views/kemet_post/model/kemet_post.dart';
import 'package:flutter/material.dart';

class KemetPostComponent extends StatefulWidget {
  final KemetPost kemetPost;
  const KemetPostComponent({Key? key, required this.kemetPost})
      : super(key: key);

  @override
  State<KemetPostComponent> createState() => _KemetPostComponentState();
}

class _KemetPostComponentState extends State<KemetPostComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(widget.kemetPost.userAvatar),
                ),
                Column(
                  children: [
                    Text(widget.kemetPost.userName),
                    Text(
                      widget.kemetPost.datePosted,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
            Icon(Icons.more)
          ],
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.favorite_outline),
                SizedBox(
                  width: 4,
                ),
                Icon(Icons.comment),
                SizedBox(
                  width: 4,
                ),
                Icon(Icons.send)
              ],
            ),
            Icon(Icons.save_alt_sharp)
          ],
        )
      ],
    );
  }
}
