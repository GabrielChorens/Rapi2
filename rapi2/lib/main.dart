import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logging/logging.dart';
import 'package:rapi2/core/injection/dependencies_injection.dart';
import 'package:rapi2/rapi2_root_app.dart';
import 'i18n/generated/translations.g.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Initialize locale settings
  LocaleSettings.useDeviceLocale(); 
  //Initialize getStorage
  await GetStorage.init();
  //Initialize logger
  Logger.root.level = Level.ALL; // Log all messages.
  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print('${record.level.name}: ${record.time}: ${record.message} ${record.error} ${record.stackTrace}');
  });
  //Initialize dependency injection
  configureDependencies();
  //Run app
  runApp(TranslationProvider(child: const Rapi2ClientApp()));
}
