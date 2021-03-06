import 'package:logging/logging.dart';
import 'test_invalid_schemas.dart' as test_invalid_schemas;
import 'test_validation.dart' as test_validation;

main() {
  Logger.root.level = Level.OFF;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  test_invalid_schemas.main();
  test_validation.main();
}

