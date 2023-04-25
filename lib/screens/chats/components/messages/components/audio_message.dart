import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../models/chat_message.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({super.key, required this.message});
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 0.75, vertical: defaultPadding / 2.5),
      decoration: BoxDecoration(
        color: aPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? aPrimaryColor : Colors.white,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender
                        ? Colors.white
                        : aPrimaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color:
                              message.isSender ? Colors.white : aPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            '0:33',
            style: TextStyle(
                fontSize: 12, color: message.isSender ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}
