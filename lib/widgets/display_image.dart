import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage(
      {super.key,
      required this.url,

      required this.radius});

  final String url;

  final double radius;

  @override
  Widget build(BuildContext context) {
    return AvatarView(
      radius: radius,
      borderColor: Colors.grey[850],
      avatarType: AvatarType.CIRCLE,
      backgroundColor: Colors.grey,
      imagePath: "assets/images/$url",

      errorWidget:  const Icon(Icons.error, size: 50,),
    );
  }
}
