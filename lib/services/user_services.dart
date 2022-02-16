part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(model.User user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
      'balace': user.balance,
      'selectedGenres': user.selectedGenres,
      'selectedLanguage': user.selectedLanguage,
      'profilePicture': user.profilePicture
    });
  }
}
