import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Empty test', (tester) async {
          tester.binding.platformDispatcher.onSemanticsEnabledChanged = () {
      };
      
    await tester.pumpWidget(Container());
    await tester.pumpAndSettle();
  });
}
