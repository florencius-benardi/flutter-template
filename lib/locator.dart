import 'package:get_it/get_it.dart';
import 'package:our_e_school/core/services/AuthenticationServices.dart';
import 'package:our_e_school/core/viewmodel/HolidayModel.dart';
import 'package:our_e_school/core/viewmodel/QuizStateModel.dart';

import 'core/services/repository_calendarific.dart';
import 'core/viewmodel/LoginPageModel.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerFactory(() => QuizStateModel());

  locator.registerLazySingleton(() => RepositoryCalendarific());
  locator.registerFactory(() => HolidayModel());

  locator.registerLazySingleton(() => AuthenticationServices());
  locator.registerFactory(() => LoginPageModel());
}
