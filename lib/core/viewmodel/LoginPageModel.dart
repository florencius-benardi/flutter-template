import 'package:our_e_school/core/Models/User.dart';
import 'package:our_e_school/core/enums/ViewState.dart';
import 'package:our_e_school/core/services/AuthenticationServices.dart';
import 'package:our_e_school/core/viewmodel/BaseModel.dart';
import 'package:our_e_school/locator.dart';

class LoginPageModel extends BaseModel {
  final _authenticationService = locator<AuthenticationServices>();
  User _loggedInUser;

  User get loggedInUser => _loggedInUser;

  // googleLogin() async {
  //   setState(ViewState.Busy);
  //   await _authenticationService.handleGoogleSignIn();
  //   setState(ViewState.Idle);
  // }

  getUserData() async {
    setState(ViewState.Busy);
    _loggedInUser = await _authenticationService.fetchUserData();
    setState(ViewState.Idle);
  }

  logoutUser() {
    setState(ViewState.Busy);
    _authenticationService.logoutMethod();
    setState(ViewState.Idle);
  }
}
