import 'package:fate/Custom%20Widgets/custom_text_button.dart';
import 'package:fate/constant.dart';
import 'package:fate/story_page.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Driver',
            style: kCreepster50Bold,
          ),
          const Text(
            'Play?',
            style: kCreepster50Bold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoryPage()),
                          (route) => false);
                    });
                  },
                  buttonTitle: 'YES',
                  buttonColor: Colors.green),
              CustomTextButton(
                  onPressed: () {}, buttonTitle: 'NO', buttonColor: Colors.red),
            ],
          )
        ],
      ),
    );
  }
}
