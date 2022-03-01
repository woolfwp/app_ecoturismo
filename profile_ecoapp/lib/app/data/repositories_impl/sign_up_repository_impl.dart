import 'package:firebase_auth/firebase_auth.dart';
import 'package:profile_ecoapp/app/domain/inputs/sign_up.dart';
import 'package:profile_ecoapp/app/domain/repositories/sign_up_repository.dart';

class SingUpRepositoryImpl implements SignUpRepository {
  final FirebaseAuth _auth;

  SingUpRepositoryImpl(this._auth);
  @override
  Future<SignUpResponse> register(SignUpData data) async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      await userCredential.user!.updateDisplayName(
        "${data.name} ${data.lastname} ${data.altura} ${data.edad} ${data.peso}",
      );
      return SignUpResponse(null, userCredential.user!);
    } on FirebaseAuthException catch (e) {
      return SignUpResponse(e.code, null);
    }
  }
}
