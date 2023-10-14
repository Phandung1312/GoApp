

import 'package:get_it/get_it.dart';
import 'package:go_app_driver/core/inject/injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;  
  
@InjectableInit()  
Future<void> configureInjection(String env) async {
  await getIt.init(environment: env);
} 