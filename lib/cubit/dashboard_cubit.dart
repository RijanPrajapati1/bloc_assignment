import 'package:bloc_assignment/bloc/area_of_circle_bloc.dart';
import 'package:bloc_assignment/bloc/simple_interest_bloc.dart';
import 'package:bloc_assignment/bloc/student_list_bloc.dart';
import 'package:bloc_assignment/view/area_of_circle_view.dart';
import 'package:bloc_assignment/view/simple_interest_view.dart';
import 'package:bloc_assignment/view/student_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._areaOfCircleBloc,
    this._simpleInterestBloc,
    this._studentListBloc,
  ) : super(null); //giving default value 0 to parent\

  final AreaOfCircleBloc _areaOfCircleBloc;
  final SimpleInterestBloc _simpleInterestBloc;
  final StudentListBloc _studentListBloc;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: _areaOfCircleBloc, child: AreaOfCircleView()),
        ));
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: _simpleInterestBloc, child: SimpleInterestView()),
        ));
  }

  void openStudentListView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: _studentListBloc, child: StudentListView()),
        ));
  }
}
