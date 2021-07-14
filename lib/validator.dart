class Validator {
  static final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  static final RegExp passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$',
  );

  static final RegExp mobileNumberRegExp = RegExp(
    r'(^(?:[+0]9)?[0-9]{10,12}$)',
  );

  static ValidationResponse isValidEmail(String? email, String errorMessage) {
    if (email != null) {
      email = email.trim();
      if (email.isEmpty) {
        return ValidationResponse(isValid: false, errorMessage: errorMessage);
      } else if (emailRegExp.hasMatch(email)) {
        return ValidationResponse(isValid: true, errorMessage: '');
      } else {
        return ValidationResponse(isValid: false, errorMessage: errorMessage);
      }
    } else {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
  }

  static ValidationResponse isValidPassword(
      String? password, int passwordMinLength, String errorMessage) {
    if (password != null) {
      password = password.trim();
      if (password.isEmpty) {
        return ValidationResponse(isValid: false, errorMessage: errorMessage);
      } else if (password.length < passwordMinLength) {
        return ValidationResponse(isValid: false, errorMessage: errorMessage);
      } else {
        return ValidationResponse(isValid: true, errorMessage: '');
      }
    } else {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
  }

  static ValidationResponse isValidConfirmPassword(
      int passwordMinLength, String errorMessage,
      {String? password, String? confirmPassword}) {
    if (confirmPassword != null) {
      confirmPassword = confirmPassword.trim();
      password = password!.trim();
      if (confirmPassword.isEmpty) {
        return ValidationResponse(isValid: false, errorMessage: errorMessage);
      } else if (confirmPassword.length < passwordMinLength) {
        return ValidationResponse(isValid: false, errorMessage: errorMessage);
      } else {
        if (password == confirmPassword) {
          return ValidationResponse(isValid: true, errorMessage: '');
        } else {
          return ValidationResponse(isValid: false, errorMessage: errorMessage);
        }
      }
    } else {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
  }

  static ValidationResponse isValidMobileNumber(
      String? number, String errorMessage) {
    if (number == null) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (number.trim().isEmpty == true) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (number.length != 8) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
    return ValidationResponse(isValid: true, errorMessage: '');
  }

  static ValidationResponse isValidTextField(String? text, String errorMessage,
      {String? fieldName}) {
    if (text == null) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (text.trim().isEmpty == true) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
    return ValidationResponse(isValid: true, errorMessage: '');
  }

  static ValidationResponse isValidCardNo(String? number, String errorMessage) {
    if (number == null) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (number.trim().isEmpty == true) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (number.length < 16) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
    return ValidationResponse(isValid: true, errorMessage: '');
  }

  static ValidationResponse isValidExpiryDate(
      String? date, String errorMessage) {
    if (date == null) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (date.trim().isEmpty == true) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (date.length < 6) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
    return ValidationResponse(isValid: true, errorMessage: '');
  }

  static ValidationResponse isValidCVV(String? number, String errorMessage) {
    if (number == null) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (number.trim().isEmpty == true) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    } else if (number.length < 3) {
      return ValidationResponse(isValid: false, errorMessage: errorMessage);
    }
    return ValidationResponse(isValid: true, errorMessage: '');
  }
}

class ValidationResponse {
  String errorMessage;
  bool isValid;

  ValidationResponse({required this.isValid, required this.errorMessage});
}
