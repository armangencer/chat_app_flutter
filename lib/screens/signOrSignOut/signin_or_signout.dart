import 'package:chat_app_flutter/components/primary_button.dart';
import 'package:chat_app_flutter/constants.dart';
import 'package:chat_app_flutter/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignOut extends StatelessWidget {
  const SigninOrSignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light.png'
                    : 'assets/images/Logo_dark.png',
                height: 146,
              ),
              const Spacer(),
              PrimaryButton(
                text: 'Sign İn',
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                ),
                padding: const EdgeInsets.all(5),
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: defaultPadding * 1.5),
              PrimaryButton(
                text: 'Sign İn',
                press: () {},
                padding: const EdgeInsets.all(5),
                color: Theme.of(context).colorScheme.secondary,
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
