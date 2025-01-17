import 'package:flutter_test/flutter_test.dart';

import 'package:portfolio_web/main.dart';

void main() {
  testWidgets('Header navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    // Verify that the 'About' page is displayed.
    expect(find.text('About'), findsOneWidget);

    //expect(find.text('About'), findsOneWidget);
  });
}
