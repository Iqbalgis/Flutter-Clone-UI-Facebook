import 'package:flutter/material.dart';
import 'package:ui_facebook/widgets/components/button_status.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String name;
  final String text;

  const PostCard({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          PostCardHeader(
            profileImage: profileImage,
            name: name,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          _LikeCommentShareRow(),
        ],
      ),
    );
  }
}

class _LikeCommentShareRow extends StatelessWidget {
  const _LikeCommentShareRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ButtonStatus(
            text: "Like",
            iconColor: Colors.grey,
            icon: Icons.thumb_up_alt_outlined,
          ),
        ),
        SizedBox(width: 1.0),
        Expanded(
          child: ButtonStatus(
            text: "Comment",
            iconColor: Colors.grey,
            icon: Icons.messenger_outline_sharp,
          ),
        ),
        SizedBox(width: 1.0),
        Expanded(
          child: ButtonStatus(
            text: "Share",
            iconColor: Colors.grey,
            icon: Icons.share,
          ),
        ),
      ],
    );
  }
}

class PostCardHeader extends StatelessWidget {
  final String profileImage;
  final String name;

  const PostCardHeader(
      {Key? key, required this.profileImage, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: SizedBox(
                  height: 40.0,
                  width: 40.0,
                  child: Image.asset(profileImage),
                ),
              ),
              SizedBox(width: 8.0),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "$name ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "updated his status"),
                  ],
                ),
              ),
            ],
          ),
          Icon(Icons.more_horiz_rounded, color: Colors.grey[600]),
        ],
      ),
    );
  }
}
