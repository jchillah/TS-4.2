import 'data/mock_database.dart';
import 'domain/level.dart';
import 'domain/screen_state.dart';
import 'domain/theme.dart';
import 'domain/video_content.dart';

void main() {
  MockDatabase databaseRepository = MockDatabase();
/**
  List<Level> levels = databaseRepository.getLevels();
  ScreenState screenStates = databaseRepository.getScreenState();
  List<Theme> themes = databaseRepository.getThemes();
  List<VideoContent> videoContents = databaseRepository.getVideoContents();
**/
  Level newLevel = Level(theme: 'New Theme', animals: []);
  databaseRepository.addLevel(newLevel);
  print('Added new level: ' + newLevel.theme);

  // Aktualisierte Liste der Levels abrufen und ausgeben
  List<Level> updatedLevels = databaseRepository.getLevels();
  print('Updated levels: $updatedLevels');

 // Beispiel: Aktualisieren des Bildschirmzustands in der Datenbank
  ScreenState newScreenState = ScreenState('New message', true);
  databaseRepository.updateScreenState(newScreenState);
  print('Updated screen state: $newScreenState');

  // Beispiel: Hinzufügen eines neuen Themas zur Datenbank
  Theme newTheme = Theme('New Theme', []);
  databaseRepository.addTheme(newTheme);
  print('Added new theme: $newTheme');

  // Beispiel: Hinzufügen eines neuen Videoinhalts zur Datenbank
  VideoContent newVideoContent = VideoContent('New Video Path', 'New Description', videoPath: '', description: '');
  databaseRepository.addVideoContent(newVideoContent);
  print('Added new video content: $newVideoContent');
}

