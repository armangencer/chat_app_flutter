import 'package:chat_app_flutter/constants.dart';
import 'package:chat_app_flutter/models/chat_message.dart';
import 'package:flutter/material.dart';

import 'chat_input_field.dart';
import 'message.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
