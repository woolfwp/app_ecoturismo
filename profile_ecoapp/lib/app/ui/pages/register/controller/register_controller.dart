import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:profile_ecoapp/app/ui/pages/register/controller/register_state.dart';

class RegisterController extends StateNotifier<RegisterState> {
  RegisterController() : super(RegisterState.initialState);

  submit() {}

  void onNameChanged(String text) {
    state = state.copyWith(name: text);
  }

  void onLastNameChanged(String text) {
    state = state.copyWith(lastname: text);
  }

  void onAgeChanged(String text) {
    state = state.copyWith(edad: text);
  }

  void onPesoChanged(String text) {
    state = state.copyWith(peso: text);
  }

  void onAlturaChanged(String text) {
    state = state.copyWith(altura: text);
  }

  void onEmailChanged(String text) {
    state = state.copyWith(altura: text);
  }

  void onPasswordChanged(String text) {
    state = state.copyWith(password: text);
  }

  void onVpasswordChanged(String text) {
    state = state.copyWith(vpassword: text);
  }
}
