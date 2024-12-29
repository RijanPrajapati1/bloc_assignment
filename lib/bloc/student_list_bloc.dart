import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'student_list_event.dart';
part 'student_list_state.dart';

class StudentListBloc extends Bloc<StudentListEvent, StudentListState> {
  StudentListBloc() : super(StudentListInitial()) {
    on<StudentListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
