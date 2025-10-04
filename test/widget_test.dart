// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:docconnect_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders splash screen', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: DocConnectApp(),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
