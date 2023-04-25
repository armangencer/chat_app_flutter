import 'package:chat_app_flutter/constants.dart';
import 'package:chat_app_flutter/screens/chats/components/body.dart';
import 'package:chat_app_flutter/screens/chats/components/messages/components/message_body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const MessageBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
          const SizedBox(width: defaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Arman Gençer',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Active 1m Ago',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.local_phone),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.videocam),
        ),
        const SizedBox(width: defaultPadding / 2),
      ],
    );
  }
}
