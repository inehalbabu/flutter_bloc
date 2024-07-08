import 'package:formz/formz.dart';

enum PasswordValidateError { empty, tooShort }

class Password extends FormzInput<String, PasswordValidateError> {
  const Password.pure() : super.pure('');

  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidateError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidateError.empty;
    } else if (value.length < 6) {
      return PasswordValidateError.tooShort;
    }
    return null;
  }
}
