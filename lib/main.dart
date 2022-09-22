import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
// import 'package:flutter/foundation.dart'
//     show debugDefaultTargetPlatformOverride;
import 'package:our_e_school/locator.dart';
import 'package:provider/provider.dart';

import 'UI/Widgets/DynamicThemeChanger.dart';
import 'UI/pages/WelcomeScreen.dart';

void main() {
  // debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  timeDilation = 2;
  Provider.debugCheckInvalidValueType = null;
  setupLocator();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // Provider(
          //   builder: (context) => locator<AuthenticationServices>()
          // )
        ],
        child: DynamicTheme(
          defaultBrightness: Brightness.light,
          data: (brightness) => ThemeData(
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            }),
            fontFamily: "Nunito",
            primaryColor: Colors.red,
            accentColor: Colors.redAccent,
            primaryColorDark: Color(0xff0029cb),
            brightness: brightness,
          ),
          themedWidgetBuilder: (context, theme) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Our E-School',
            theme: theme,
            home: WelcomeScreen(),
          ),
        ));
  }
}
