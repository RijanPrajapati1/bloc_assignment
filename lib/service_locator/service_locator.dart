import 'package:bloc_assignment/bloc/area_of_circle_bloc.dart';
import 'package:bloc_assignment/bloc/simple_interest_bloc.dart';
import 'package:bloc_assignment/bloc/student_list_bloc.dart';
import 'package:bloc_assignment/cubit/dashboard_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initBloc();
  _initCubit();
}

void _initBloc() {
  serviceLocator.registerLazySingleton<AreaOfCircleBloc>(
    () => AreaOfCircleBloc(),
  );
  serviceLocator.registerLazySingleton<SimpleInterestBloc>(
    () => SimpleInterestBloc(),
  );
  serviceLocator.registerLazySingleton<StudentListBloc>(
    () => StudentListBloc(),
  );
}

void _initCubit() {
  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
