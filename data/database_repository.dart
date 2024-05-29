import '../domain/animal.dart';
import '../domain/level.dart';
import '../domain/quiz_question.dart';
import '../domain/screen_state.dart';
import '../domain/theme.dart';
import '../domain/video_content.dart';

abstract class DatabaseRepository {
  // Gib mir alle Levels
  Future<List<Level>> getLevels();

  // Gib mir alle Quizfragen
  Future<List<QuizQuestion>> getQuizQuestions();

  // Gib mir den Bildschirmzustand
  Future<ScreenState> getScreenState();

  // Gib mir alle Themen
  Future<List<Theme>> getThemes();

  // Gib mir alle Videoinhalte
  Future<List<VideoContent>> getVideoContents();

  // Beispielimplementation für soundPath
  Future<VideoContent?> getSoundPath(Animal animal);
}
