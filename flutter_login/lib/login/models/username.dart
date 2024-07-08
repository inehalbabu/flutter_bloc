import 'package:formz/formz.dart';

enum UsernameValidateError { empty }

class Username extends FormzInput<String, UsernameValidateError> {
  const Username.pure() : super.pure('');

  const Username.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidateError? validator(String value) {
    if (value.isEmpty) return UsernameValidateError.empty;
    return null;
  }
}
