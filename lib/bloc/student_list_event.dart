part of 'student_list_bloc.dart';

@immutable
sealed class StudentListEvent {}

class AddStudentEvent extends StudentListEvent {
  final Student student;

  AddStudentEvent(this.student);
}
