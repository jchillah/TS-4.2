
import '../domain/animal.dart';
import '../domain/level.dart';
import '../domain/quiz_question.dart';
import '../domain/screen_state.dart';
import '../domain/theme.dart';
import '../domain/video_content.dart';

abstract class DatabaseRepository {
  
  // Gib mir alle Levels
  List<Level> getLevels();

  // Gib mir alle Quizfragen
  List<QuizQuestion> getQuizQuestions();

  // Gib mir den Bildschirmzustand
  ScreenState getScreenState();

  // Gib mir alle Themen
  List<Theme> getThemes();

  // Gib mir alle Videoinhalte
  List<VideoContent> getVideoContents();

    // Beispielimplementation für soundPath
  VideoContent? getSoundPath(Animal animal);

}