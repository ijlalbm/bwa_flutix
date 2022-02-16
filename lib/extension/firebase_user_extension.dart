part of 'extensions.dart';

extension FirebaseUserExtension on User {
  model.User convertToUser(
          {String name = "No Name",
          List<String> selectedGenres = const [],
          String selectedLanguage = "English",
          int balance = 50000}) =>
      model.User(this.uid, this.email!,
          name: name,
          balance: balance,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);
}
