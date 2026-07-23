import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/manager_settings_datasource.dart';
import '../../data/repositories/manager_settings_repository_impl.dart';

import '../../domain/entities/manager_settings.dart';
import '../../domain/usecases/get_manager_settings.dart';

/// Data Source Provider
final managerSettingsDataSourceProvider = Provider<ManagerSettingsDataSource>((
  ref,
) {
  return ManagerSettingsDataSource();
});

/// Repository Provider
final managerSettingsRepositoryProvider =
    Provider<ManagerSettingsRepositoryImpl>((ref) {
      final dataSource = ref.watch(managerSettingsDataSourceProvider);

      return ManagerSettingsRepositoryImpl(dataSource: dataSource);
    });

/// UseCase Provider
final getManagerSettingsProvider = Provider<GetManagerSettings>((ref) {
  final repository = ref.watch(managerSettingsRepositoryProvider);

  return GetManagerSettings(repository: repository);
});

/// UI State Provider
final managerSettingsProvider = FutureProvider<ManagerSettings>((ref) async {
  final useCase = ref.watch(getManagerSettingsProvider);

  return useCase();
});
