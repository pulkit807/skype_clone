



import 'package:contacts/models/user.dart';
import 'package:contacts/resources/firebase_repository.dart';
import 'package:flutter/widgets.dart';


class UserProvider with ChangeNotifier {
  User _user;
  FirebaseRepository _firebaseRepository = FirebaseRepository();

  User get getUser => _user;

  void refreshUser() async {
    User user = await _firebaseRepository.getUserDetails();
    _user = user;
    notifyListeners();
  }

}