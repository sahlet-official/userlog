// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:userlog/services/log/api/i_log_service.dart' as _i3;
import 'package:userlog/services/log/dependencies/log_service_module.dart'
    as _i5;
import 'package:userlog/services/log/services/log_service.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final logServiceModule = _$LogServiceModule();
    gh.singleton<_i3.ILogService>(logServiceModule.logService);
    gh.factory<_i4.LogService>(() => _i4.LogService());
    return this;
  }
}

class _$LogServiceModule extends _i5.LogServiceModule {}
