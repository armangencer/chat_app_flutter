import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../models/chat_message.dart';

class VideoMessage extends StatelessWidget {
  const VideoMessage({super.key, required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/Video Place Here.png',
              ),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  color: aPrimaryColor, shape: BoxShape.circle),
              child: const Icon(
                Icons.play_arrow,
                size: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
