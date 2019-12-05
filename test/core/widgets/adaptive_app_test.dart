import 'package:exchange_gift/core/theme/theme.dart';
import 'package:exchange_gift/core/widgets/adaptive_app.dart';
import 'package:exchange_gift/features/route.dart';
import 'package:exchange_gift/generated/i18n.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AdaptiveApp has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(AdaptiveApp(
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
    ));

    final textFinder = find.text('Type your name');
    
    expect(textFinder, findsOneWidget);
  });
}
