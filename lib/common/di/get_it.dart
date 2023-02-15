import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:itnun/common/di/get_it.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => getIt.init();
