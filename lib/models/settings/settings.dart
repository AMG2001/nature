import 'package:hive/hive.dart';



@HiveType(typeId: 1)
class Settings extends HiveObject {
  @HiveField(0)
  String language = 'en'; // Default language
  @HiveField(1)
  bool isDarkMode = false; // Default theme

  // Add more settings properties as needed, e.g.,
  // @HiveField(2)
  // int fontSize = 16;

  Settings({
    this.language = 'en',
    this.isDarkMode = false,
    // ...other properties
  });

  Settings copyWith({
    String? language,
    bool? isDarkMode,
    // ...other properties
  }) {
    return Settings(
      language: language ?? this.language,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      // ...other properties
    );
  }
}