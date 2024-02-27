import 'package:firebase_database/firebase_database.dart';
import '../model/app_user_model.dart';

class FirebaseServices {
  DatabaseReference ref = FirebaseDatabase.instance.ref();

// root

  Future<void> createUser(AppUser user) async {
    await ref.child('user-node').child(user.id!).set(user.toMap());
  }

  Future<Map?> userGetData() async {
    Map? userData;

    await ref.child('user-node').get().then((value) {
      userData = value.value == null ? null : value.value as Map;
    });
    return userData;
  }
}
