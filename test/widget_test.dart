import 'package:demopcpsseca/chatapp/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('login page switches between sign in and registration', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: loginPage()));

    expect(find.text('Sign in'), findsOneWidget);
    expect(find.text('Forgot password?'), findsOneWidget);

    await tester.tap(find.text('New here? Create an account'));
    await tester.pump();

    expect(find.text('Create account'), findsNWidgets(2));
    expect(find.text('Forgot password?'), findsNothing);
  });
}
