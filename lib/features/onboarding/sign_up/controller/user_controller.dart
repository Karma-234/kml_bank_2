import 'package:country_list_pick/country_list_pick.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get find => Get.find();
  RxString firstName = ''.obs;
  RxString lastName = ''.obs;
  RxString email = ''.obs;
  RxString fullName = ''.obs;
  RxString password = ''.obs;
  RxString dob = ''.obs;
  RxString phoneNumber = ''.obs;
  RxString passCode = ''.obs;
  RxString gender = 'Male'.obs;
  RxString countryCode = '+234'.obs;
  RxString otp = ''.obs;
  Rx<CountryCode> country = CountryCode(dialCode: '+234').obs;
  RxBool active = false.obs;
  setGender(String value) {
    gender.value = value;
  }

  bool get isActive {
    return country.value.dialCode != null && phoneNumber.value.length >= 10;
  }

  bool get isActive2 {
    return otp.value.isNotEmpty &&
        otp.value.length == 6 &&
        otp.value.isNumericOnly;
  }

  bool get isActive3 {
    return password.value.isNotEmpty && password.value.length > 8;
  }

  bool get isActive4 {
    return (firstName.value.isNotEmpty && firstName.value.isAlphabetOnly) &&
        (lastName.value.isNotEmpty && lastName.value.isAlphabetOnly) &&
        (email.value.isNotEmpty && email.value.isEmail) &&
        dob.value.isNotEmpty &&
        gender.value.isNotEmpty;
  }

  bool get isActive5 {
    return passCode.value.isNotEmpty &&
        passCode.value.length == 4 &&
        passCode.value.isNumericOnly;
  }

  setDob(String value) {
    dob.value = value;
  }

  setEmail(String value) {
    email.value = value;
  }

  setOtp(String value) {
    otp.value = value;
  }

  setState(bool value) {
    active.value = value;
  }

  setFirstName(String value) {
    firstName.value = value;
  }

  setLastname(String value) {
    lastName.value = value;
  }

  setPassword(String value) {
    password.value = value;
  }

  setPhoneNumber(String value) {
    phoneNumber.value = value;
  }

  setFullName(String value) {
    fullName.value = value;
  }

  setPassCode(String value) {
    passCode.value = value;
  }

  setCountryCode(String value) {
    countryCode.value = value;
  }

  setCountry(CountryCode countryCode) {
    country.value = countryCode;
  }
}
