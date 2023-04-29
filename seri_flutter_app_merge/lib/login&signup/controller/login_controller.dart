import 'package:dio/dio.dart';
import 'package:seri_flutter_app/common/shared_pref.dart';
import 'package:seri_flutter_app/login&signup/models/LoginData.dart';
import 'package:seri_flutter_app/login&signup/models/LoginResponse.dart';
import 'package:seri_flutter_app/login&signup/models/SignupCheck.dart';
import 'package:seri_flutter_app/login&signup/models/SignupData.dart';

class LoginController {
  static final _sharedPref = SharedPref.instance;
  final dio = Dio();

  Future<bool> isUserAuthorized() async {
    return await SharedPref.instance.readIsLoggedIn();
  }

  Future<bool> signup(SignupData signupData) async {
    const endPointUrl =
        "https://swaraj.pythonanywhere.com/django/api/register_customer/";
    final parameters = signupData.getFormData(signupData);

    bool serverMsg = await _httpRequestForSignUp(endPointUrl, parameters);
    return serverMsg;
  }

  Future<bool> login(LoginData loginData) async {
    const endPointUrl =
        "https://swaraj.pythonanywhere.com/django/api/customer_login/";
    final parameters = loginData.getFormData(loginData);

    bool serverMsg = await _httpPostRequest(endPointUrl, parameters);
    return serverMsg;
  }

  Future<bool> _httpPostRequest(String url, FormData formData) async {
    LoginResponse loginResponse;
    String authToken;
    bool isAuthorized = false;
    try {
      var response = await dio.post(url, data: formData);

      if (response != null) {
        loginResponse =
            LoginResponse.getLoginResponseFromHttpResponse(response);
        //authToken = _sharedPref.saveIsLoggedIn("Done");
        //_sharedPref.saveUserAuthToken(authToken);
        //_sharedPref.saveUser(json.encode(response));
        isAuthorized = true;
      }

      return isAuthorized;
    } catch (e) {
      throw new Exception('Error');
    }
  }

  Future<bool> _httpRequestForSignUp(String url, FormData formData) async {
    try {
      bool result = false;
      var response = await dio.post(url, data: formData);

      var loginResponse =
          SignupCheck.getSignUpResponseFromHttpResponse(response);
      if (response.data['registerStatus'] == true) {
        // String authToken = loginResponse.message;
        // _sharedPref.saveIsLoggedIn(true);
        // _sharedPref.saveUserAuthToken(authToken);
        // _sharedPref.saveUser(json.encode(response));
        result = true;
      }
      return result;
    } catch (e) {
      throw Exception('Error');
    }
  }

  Future<bool> logOut() {
    _sharedPref.removeUser();
    return _sharedPref.removeIsLoggedIn();
  }
}
