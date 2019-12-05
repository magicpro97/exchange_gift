import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdaptiveApp extends StatelessWidget {
  final String initialRoute;
  final Map<String, Function(BuildContext)> route;
  final ThemeData themeData;
  final Function(BuildContext) onGenerateTitle;
  final List<LocalizationsDelegate<dynamic>> localizationsDelegates;
  final List<Locale> supportedLocales;
  final Function(Locale, List<Locale>) localeResolutionCallback;
  final Function(List<Locale>, List<Locale>) localeListResolutionCallback;

  const AdaptiveApp({
    Key key,
    @required this.themeData,
    @required this.route,
    @required this.initialRoute,
    @required this.onGenerateTitle,
    @required this.localizationsDelegates,
    @required this.supportedLocales,
    @required this.localeResolutionCallback,
    @required this.localeListResolutionCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? _buildIOSApp() : _buildMaterialApp();
  }

  Widget _buildMaterialApp() {
    return MaterialApp(
      theme: themeData,
      routes: route,
      initialRoute: initialRoute,
      onGenerateTitle: onGenerateTitle,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      localeResolutionCallback: localeResolutionCallback,
      localeListResolutionCallback: localeListResolutionCallback,
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildIOSApp() {
    return Theme(
      data: themeData,
      child: CupertinoApp(
        routes: route,
        initialRoute: initialRoute,
        debugShowCheckedModeBanner: false,
        onGenerateTitle: onGenerateTitle,
        localizationsDelegates: localizationsDelegates,
        supportedLocales: supportedLocales,
        localeResolutionCallback: localeResolutionCallback,
        localeListResolutionCallback: localeListResolutionCallback,
      ),
    );
  }
}
