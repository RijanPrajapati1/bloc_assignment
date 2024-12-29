import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'simple_interest_event.dart';
part 'simple_interest_state.dart';

class SimpleInterestBloc extends Bloc<SimpleInterestEvent, SimpleInterestState> {
  SimpleInterestBloc() : super(SimpleInterestInitial()) {
    on<SimpleInterestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
