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

  static Future<model.User> getUser(String id) async {
    DocumentSnapshot docSnapshot = await _userCollection.doc(id).get();
    Map<String, dynamic> snapshot = docSnapshot.data() as Map<String, dynamic>;

    return model.User(
      id,
      snapshot['email'],
      balance: snapshot['balance'],
      profilePicture: snapshot['profilePicture'],
      selectedLanguage: snapshot['selectedLanguage'],
      selectedGenres: (snapshot['selectedGenres'] as List)
          .map((e) => e.toString())
          .toList(),
      name: snapshot['name'],
    );
  }
}
