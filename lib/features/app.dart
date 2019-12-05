import 'package:exchange_gift/core/theme/theme.dart';
import 'package:exchange_gift/core/widgets/apdaptive_app.dart';
import 'package:exchange_gift/features/route.dart';
import 'package:exchange_gift/generated/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveApp(
      themeData: primaryTheme,
      onGenerateTitle: (context) => S.of(context).app_name,
      route: route,
      initialRoute: LANDING_PAGE,
      localizationsDelegates: const <LocalizationsDelegate>[
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback:
          S.delegate.resolution(fallback: const Locale('en', '')),
      localeListResolutionCallback:
          S.delegate.listResolution(fallback: const Locale('en', '')),
    );
  }
}
