import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'area_of_circle_event.dart';

class AreaOfCircleBloc extends Bloc<AreaOfCircleEvent, double> {
  AreaOfCircleBloc() : super(0) {
    on<AOCEvent>((event, emit) {
      final area = event.radius * event.radius * 3.14159;
      emit(area);
    });
  }
}
