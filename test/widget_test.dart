
import 'package:flutter_test/flutter_test.dart';

import 'package:kind_wall/main.dart';

void main() {
  testWidgets('App loads Welcome page', (WidgetTester tester) async {
    // Build the app and trigger a frame
    await tester.pumpWidget(const KindnessWallApp());

    // Verify that the Welcome page text appears
    expect(find.text('Kindness Wall'), findsOneWidget);

    // Optional: check for a unique widget on the Welcome page
    // For example, if you have a heart icon:
    // expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
}