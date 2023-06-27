// ignore_for_file: avoid_print

import 'package:logging/logging.dart';

void setupLogging() {
 Logger.root.level = Level.ALL; // Log all messages.
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message} ${record.error} ${record.stackTrace}');
  });
}