import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/manager_dashboard_datasource.dart';
import '../../data/repositories/manager_repository_impl.dart';

import '../../domain/entities/manager_dashboard.dart';
import '../../domain/usecases/get_manager_dashboard.dart';

final managerDashboardRepositoryProvider = Provider<ManagerRepositoryImpl>((
  ref,
) {
  final datasource = ManagerDashboardDataSource();

  return ManagerRepositoryImpl(datasource: datasource);
});

final getManagerDashboardProvider = Provider<GetManagerDashboard>((ref) {
  final repository = ref.watch(managerDashboardRepositoryProvider);

  return GetManagerDashboard(repository: repository);
});

final managerDashboardProvider = FutureProvider<ManagerDashboard>((ref) async {
  final useCase = ref.watch(getManagerDashboardProvider);

  return useCase();
});
