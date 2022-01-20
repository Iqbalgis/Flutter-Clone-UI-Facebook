import 'package:flutter/material.dart';
import 'package:ui_facebook/utils/names.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 16.0),
            Story(image: "assets/images/story0.png", name: name0),
            SizedBox(width: 8.0),
            Story(image: "assets/images/story0.png", name: name1),
            SizedBox(width: 8.0),
            Story(image: "assets/images/story0.png", name: name2),
            SizedBox(width: 8.0),
            Story(image: "assets/images/story0.png", name: name3),
            SizedBox(width: 8.0),
            Story(image: "assets/images/story0.png", name: name0),
            SizedBox(width: 8.0),
            Story(image: "assets/images/story0.png", name: name1),
            SizedBox(width: 8.0),
            Story(image: "assets/images/story0.png", name: name2),
            SizedBox(width: 8.0),
            Story(image: "assets/images/story0.png", name: name3),
            SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  final String image;
  final String name;

  const Story({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
