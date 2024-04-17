
class validationOf {
  String? emailValidate(String? input) {
    if ((input?.endsWith("@gmail.com")) ?? false) {
      return null;
    }
    return "invalid email";
  }

  String? passValidate(String? input) {
    if ((input?.length ?? 0) > 8) {
      return null;
    }
    return "wrong password";
  }
  String? nameValidate(String? input){
    if ((input?.length ?? 0) > 4) {
      return null;
  }
  return "invalid name";
  }
}
