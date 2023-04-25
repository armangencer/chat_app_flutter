import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration:
          BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
      child: SafeArea(
          child: Row(
        children: [
          const Icon(
            Icons.mic,
            color: aPrimaryColor,
          ),
          const SizedBox(
            width: defaultPadding,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding * 0.75),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: aPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 32,
                      color: const Color(0xFF087949).withOpacity(0.08),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    const SizedBox(
                      width: defaultPadding / 4,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Type Message', border: InputBorder.none),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    const SizedBox(
                      width: defaultPadding / 4,
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
