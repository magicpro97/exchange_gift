import 'package:exchange_gift/features/landing_page/presentation/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should have title, subtitle and action button', (tester) async {
    await tester.pumpWidget(MaterialApp(home: LandingPage()));

    final title = find.text('Exchange Gift');
    final subtitle1 = find.text('No one will draw their own name');
    final subtitle2 = find.text('Exclude certain draw combinations');
    final subtitle3 = find.text('Convenient wish lists');
    final button = find.text("Let's start");

    expect(title, findsOneWidget);
    expect(subtitle1, findsOneWidget);
    expect(subtitle2, findsOneWidget);
    expect(subtitle3, findsOneWidget);
    expect(button, findsOneWidget);
  });
}
