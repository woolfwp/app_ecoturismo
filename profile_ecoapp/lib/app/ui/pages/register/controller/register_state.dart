import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default('') String email,
    @Default('') String name,
    @Default('') String lastname,
    @Default('') String edad,
    @Default('') String password,
    @Default('') String vpassword,
    @Default(0) int peso,
    @Default(0) int altura,
    @Default(false) bool termsOk,
  }) = _RegisterState;

  static RegisterState get initialState => RegisterState();
}
