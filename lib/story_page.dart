import 'Custom Widgets/custom_horror_button.dart';
import 'package:flutter/material.dart';
import 'story_brain.dart';

StoryBrain storyBrain = StoryBrain();
int questioNumber = 0;

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  StoryPageState createState() => StoryPageState();
}

class StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyBrain.getStory(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Creepster',
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..color = Colors.white
                        ..strokeWidth = 2),
                ),
              ),
            ),
            CustomHorrorButton(
              onPressed: () {
                setState(() {
                  storyBrain.nextStory(1);
                });
              },
              buttonTitle: storyBrain.getChoice1(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Visibility(
              visible: storyBrain.buttonShouldBeVisible(),
              child: CustomHorrorButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(2);
                  });
                },
                buttonTitle: storyBrain.getChoice2(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
