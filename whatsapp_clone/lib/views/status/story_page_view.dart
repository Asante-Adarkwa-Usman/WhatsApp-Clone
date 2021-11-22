import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  StoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = _storyController;
    final List<StoryItem> storyItems = [
      StoryItem.text(title: '''If you do not make time for your wellness,
you will be forced to make time for your illness.
#ReadThatAgain''', backgroundColor: Theme.of(context).primaryColor),
      StoryItem.pageImage(
          url: "https://picsum.photos/250?image=9",
          controller: _storyController),
      StoryItem.pageImage(
          url:
              "https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
