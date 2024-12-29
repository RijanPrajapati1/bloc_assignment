import 'package:bloc/bloc.dart';
import 'package:bloc_assignment/model/Student.dart';
import 'package:meta/meta.dart';

part 'student_list_event.dart';

class StudentListBloc extends Bloc<StudentListEvent, List<Student>> {
  StudentListBloc() : super([]) {
    on<AddStudentEvent>((event, emit) {
      final newState = List<Student>.from(state)..add(event.student);
      emit(newState); // Emit the updated list of students
    });
  }
}
