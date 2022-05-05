import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:top_movies_flutter/di/injectable.config.dart';

import 'getit.dart';

@injectableInit
GetIt configureDependencies() => $initGetIt(getIt);
