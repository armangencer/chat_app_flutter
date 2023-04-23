import 'package:chat_app_flutter/components/filled_outline_button.dart';
import 'package:chat_app_flutter/constants.dart';
import 'package:chat_app_flutter/models/chat_model.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              defaultPadding, 0, defaultPadding, defaultPadding),
          color: aPrimaryColor,
          child: Row(
            children: [
              FilledOutlineButton(text: 'Recent Message', press: () {}),
              const SizedBox(width: defaultPadding),
              FilledOutlineButton(
                  isFilled: false, text: 'Active', press: () {}),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, index) => ChatCard(
            chat: chatsData[index],
            press: () {},
          ),
        ))
      ],
    );
  }
}
