import 'package:flutter/cupertino.dart';

class ChallengeController {
  //CurrentPage
  //NextPage
  //PreviousPage

  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int correctAnswers = 0;
}
