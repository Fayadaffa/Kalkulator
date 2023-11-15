import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kalkulator/main.dart';

void main() {
  testWidgets('Testing calculator', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Find the text fields and button
    expect(find.text('Result: 0'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Enter values and tap the button
    await tester.enterText(find.byType(TextField).first, '5');
    await tester.enterText(find.byType(TextField).last, '7');
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Expect the result to be displayed correctly
    expect(find.text('Result: 12'), findsOneWidget);
  });
}
