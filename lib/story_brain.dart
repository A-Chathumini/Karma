import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'It\'s a rainy day.You are on your way to home. Suddnly you hear a painful puppy sound. Oh! There is a poor puppy near the road.',
        choice1: 'Take him home',
        choice2: 'Ignore and go home.Someone else will help him'),
    Story(
        storyTitle:
            'you arrived home safely. yay! It\'s time to watch your favourite tv show. But feel guilty about the poor puppy you left on road.',
        choice1: 'Go back and bring him home',
        choice2: 'Call your best friend and tell what happened'),
    Story(
        storyTitle:
            'You arrived home safely with the puppy.While you feed him you notice that there is a wet belt around his neck under his wet hair."Oh! He has an owner".',
        choice1: 'This puppy is so cute.Keep him',
        choice2: 'Go and Try to find his owner'),
    Story(
        storyTitle:
            '"Oh! How did you do such a bad thing.Don\'t You believe in KARMA.Go and help him.Then someday there will be someone to help you when you need help."',
        choice1: 'yes!I believe in KARMA.I will never do such bad things.',
        choice2: ''),
    Story(
        storyTitle:
            'Good decision.His owner must be sad and looking for him.According to KARMA When we do good things it will definitely come back to us someday. ',
        choice1: 'yes! I believe in KARMA. I will always help others. ',
        choice2: ''),
    Story(
        storyTitle:
            'When you are cuddling with puppy you feel so much happy and relax.Suddenly you realize that his owner is going to loose that happiness because you keep the puppy."I should find the owner and return the puppy." According to KARMA I will be more happy then.',
        choice1: 'yes!I believe in KARMA.I will always help others.',
        choice2: '')
  ];

  getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
