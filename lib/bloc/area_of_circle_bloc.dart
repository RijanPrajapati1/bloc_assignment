import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'area_of_circle_event.dart';
part 'area_of_circle_state.dart';

class AreaOfCircleBloc extends Bloc<AreaOfCircleEvent, AreaOfCircleState> {
  AreaOfCircleBloc() : super(AreaOfCircleInitial()) {
    on<AreaOfCircleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
