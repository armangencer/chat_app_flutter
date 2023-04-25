import 'package:chat_app_flutter/screens/chats/components/messages/components/text_message.dart';
import 'package:chat_app_flutter/screens/chats/components/messages/components/video_message.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../models/chat_message.dart';
import 'audio_message.dart';

class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    messageContain(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;

        case ChatMessageType.audio:
          return AudioMessage(
            message: message,
          );
          break;
        case ChatMessageType.video:
          return VideoMessage(
            message: message,
          );
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
          ],
          const SizedBox(width: defaultPadding / 2),
          messageContain(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({super.key, required this.status});
  final MessageStatus status;
  @override
  Widget build(BuildContext context) {
    dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return aErrorColor;
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
          break;
        case MessageStatus.viewed:
          return aPrimaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: defaultPadding / 2),
      height: 12,
      width: 12,
      decoration:
          BoxDecoration(color: dotColor(status), shape: BoxShape.circle),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
