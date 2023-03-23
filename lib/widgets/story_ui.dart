import 'package:flutter/material.dart';
import 'package:socail_ui_kit/post_data.dart';

class StoryUi extends StatelessWidget {
  const StoryUi({ Key? key, required this.project }) : super(key: key);
  final ProjectPost project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(project.imageProfile!) ,
        ),
        Text(project.title!,style: const TextStyle(fontSize: 13),)
      ],
    );
  }
}