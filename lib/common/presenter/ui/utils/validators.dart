class Validators {
  static String? isUserNameValid(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Empty user name";
    }

    if (value.trim() != 'admin') {
      return "User name not found";
    }

    return null;
  }

  static String? isPasswordValid(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Empty password";
    }

    if (value.trim() != 'pass') {
      return "Password incorrect";
    }

    return null;
  }
}
