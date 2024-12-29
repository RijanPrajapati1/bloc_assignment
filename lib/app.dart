import 'package:bloc_assignment/cubit/dashboard_cubit.dart';
import 'package:bloc_assignment/service_locator/service_locator.dart';
import 'package:bloc_assignment/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLoC',
      debugShowCheckedModeBanner: false,
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardView(),
      ),
    );
  }
}
