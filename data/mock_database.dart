import '../domain/animal.dart';
import 'database_repository.dart';
import '../domain/quiz_question.dart';
import '../domain/level.dart';
import '../domain/screen_state.dart';
import '../domain/theme.dart';
import '../domain/video_content.dart';

class MockDatabase implements DatabaseRepository {
  List<Level> levels = [];
  List<QuizQuestion> quizQuestions = [];
  List<Theme> themes = [];
  List<VideoContent> videoContents = [];
  ScreenState screenState = ScreenState('Default message', false);

  @override
  List<Level> getLevels() {
    return levels;
  }

  @override
  List<QuizQuestion> getQuizQuestions() {
    return quizQuestions;
  }

  @override
  ScreenState getScreenState() {
    return screenState;
  }

  @override
  List<Theme> getThemes() {
    return themes;
  }

  @override
  List<VideoContent> getVideoContents() {
    return videoContents;
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
  int index = levels.indexWhere((level) =>
      level.animals.any((animal) => animal.name == animalName));

  if (index != -1) {
    // Aktualisiere das Tier, falls gefunden
    levels[index].animals.removeWhere((animal) => animal.name == animalName);
    levels[index].animals.add(updatedAnimal);
  } else {
    print("Das Tier '$animalName' wurde nicht gefunden.");
  }
}

 @override
VideoContent? getSoundPath(Animal animal) {
  // Durchsuche die Liste der Level nach dem Tier
  for (var level in levels) {
    for (var animalInLevel in level.animals) {
      if (animalInLevel.name == animal.name) {
        // Wenn das Tier gefunden wird, gib den SoundPath zurück
        return animalInLevel.soundPath;
      }
    }
  }
  // Gib null zurück, wenn das Tier nicht gefunden wird
  return null;
}

}
