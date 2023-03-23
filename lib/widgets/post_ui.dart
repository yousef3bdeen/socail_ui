import 'package:flutter/material.dart';
import 'package:socail_ui_kit/post_data.dart';

class PostUi extends StatelessWidget {
  const PostUi({Key? key, required this.projectPost}) : super(key: key);
  final ProjectPost projectPost;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(projectPost.imageProfile!),
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Text(
                  projectPost.title!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(projectPost.address!),
                    Text(projectPost.time!),
                  ],
                ),
              ],
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    elevation: 5,
                    color: Colors.white60,
                    child: Image.asset(
                      projectPost.imagePost1!,
                      width: 140,
                      height: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    color: Colors.white60,
                    elevation: 5,
                    child: Image.asset(
                      projectPost.imagePost2!,
                      width: 140,
                      height: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    elevation: 5,
                    color: Colors.white60,
                    child: Image.asset(
                      projectPost.imagePost3!,
                      width: 140,
                      height: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    elevation: 5,
                    color: Colors.white60,
                    child: Image.asset(
                      projectPost.imagePost4!,
                      width: 140,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
