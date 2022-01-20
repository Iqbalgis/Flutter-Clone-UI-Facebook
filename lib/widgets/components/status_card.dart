import 'package:flutter/material.dart';
import 'package:ui_facebook/widgets/components/button_status.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(width: 16.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: SizedBox(
                  height: 60.0,
                  width: 60.0,
                  child: Image.asset(
                    "assets/images/pp.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 1.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ButtonStatus(
                text: "Live",
                iconColor: Colors.red,
                icon: Icons.video_call,
              ),
            ),
            SizedBox(width: 1.0),
            Expanded(
              child: ButtonStatus(
                text: "Photo",
                iconColor: Colors.green,
                icon: Icons.photo,
              ),
            ),
            SizedBox(width: 1.0),
            Expanded(
              child: ButtonStatus(
                text: "Room",
                iconColor: Colors.deepPurple,
                icon: Icons.video_call,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
