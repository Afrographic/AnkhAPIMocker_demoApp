// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
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
  bool descriptionVisible = false;
  toggleDescription() async {
    setState(() {
      descriptionVisible = !descriptionVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(widget.kemetPost.userAvatar),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                Icon(Icons.more_vert_rounded)
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(widget.kemetPost.postDescriptionlen100,
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          Stack(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.kemetPost.postImageURL),
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: Duration(milliseconds: 300),
                opacity: descriptionVisible ? 1 : 0,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: descriptionVisible ? 400 : 0,
                  color: Colors.deepPurpleAccent.withOpacity(0.7),
                  padding: EdgeInsets.symmetric(horizontal: 64),
                  child: Center(
                    child: Text(
                      widget.kemetPost.postDescriptionlen100,
                      style: TextStyle(fontSize: 11, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black54,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  child: Icon(
                    Icons.mode_comment_outlined,
                    color: Colors.black54,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    toggleDescription();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    child: Icon(
                      descriptionVisible ? Icons.close : Icons.info_outline,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
