import 'video_content.dart';

class Animal {
  String name;
  String imagePath;
  VideoContent? soundPath;

  Animal({
    required this.name,
    required this.imagePath,
    this.soundPath, required String sound, required String image, required videoPath, required isShowingVideo,
  });

  // Beispielimplementation für soundPath
  VideoContent? getSoundPath() {
    // Hier kann die Logik für das Abrufen des Soundpfades implementiert werden
    return soundPath;
  }
}
