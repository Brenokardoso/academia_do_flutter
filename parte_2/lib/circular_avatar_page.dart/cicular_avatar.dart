import 'package:flutter/material.dart';

class CicularPage extends StatelessWidget {
  const CicularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular Avatar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageAvatar(imageUrl: "https://i.redd.it/4kbg7ionk63a1.jpg"),
          ],
        ),
      ),
    );
  }
}

class ImageAvatar extends StatefulWidget {
  ImageAvatar({super.key, required this.imageUrl});

  String imageUrl;

  @override
  State<ImageAvatar> createState() => _ImageAvatarState();
}

class _ImageAvatarState extends State<ImageAvatar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          height: 150,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(108),
            gradient: LinearGradient(colors: [
              Colors.yellow,
              Colors.pink,
            ], begin: Alignment.topLeft),
          ),
          child: const CircleAvatar(
            backgroundImage:
                NetworkImage("https://i.redd.it/4kbg7ionk63a1.jpg"),
          ),
        )
      ],
    );
  }
}
