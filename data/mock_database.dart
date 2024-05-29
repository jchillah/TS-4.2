import 'dart:async';

import '../domain/animal.dart';
import '../domain/level.dart';
import '../domain/quiz_question.dart';
import '../domain/screen_state.dart';
import '../domain/theme.dart';
import '../domain/video_content.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<Level> levels = [];
  List<QuizQuestion> quizQuestions = [];
  List<Theme> themes = [];
  List<VideoContent> videoContents = [];
  ScreenState screenState = ScreenState('Default message', false);

  Future<void> _simulateNetworkDelay() async {
    await Future.delayed(Duration(
        seconds: 1 + (2 * (DateTime.now().millisecondsSinceEpoch % 2))));
  }

  @override
  Future<List<Level>> getLevels() async {
    await _simulateNetworkDelay();
    return levels;
  }

  @override
  Future<List<QuizQuestion>> getQuizQuestions() async {
    await _simulateNetworkDelay();
    return quizQuestions;
  }

  @override
  Future<ScreenState> getScreenState() async {
    await _simulateNetworkDelay();
    return screenState;
  }

  @override
  Future<List<Theme>> getThemes() async {
    await _simulateNetworkDelay();
    return themes;
  }

  @override
  Future<List<VideoContent>> getVideoContents() async {
    await _simulateNetworkDelay();
    return videoContents;
  }

  @override
  Future<VideoContent?> getSoundPath(Animal animal) async {
    await _simulateNetworkDelay();
    return null;
  }

  void addLevel(Level newLevel) {
    levels.add(newLevel);
  }

  void updateScreenState(ScreenState newScreenState) {
    screenState = newScreenState;
  }

  void addTheme(Theme newTheme) {
    themes.add(newTheme);
  }

  void addVideoContent(VideoContent newVideoContent) {
    videoContents.add(newVideoContent);
  }

  void addQuizQuestion(QuizQuestion newQuizQuestion) {
    quizQuestions.add(newQuizQuestion);
  }

  void addAnimal(Animal newAnimal) {
    // Logik für die Bearbeitung von Tieren hinzufügen
  }

  void updateAnimal(String animalName, Animal updatedAnimal) {
    // Suche das Tier in der Liste
    int index = levels.indexWhere(
        (level) => level.animals.any((animal) => animal.name == animalName));

    if (index != -1) {
      // Aktualisiere das Tier, falls gefunden
      levels[index].animals.removeWhere((animal) => animal.name == animalName);
      levels[index].animals.add(updatedAnimal);
    } else {
      print("Das Tier '$animalName' wurde nicht gefunden.");
    }
  }
}
