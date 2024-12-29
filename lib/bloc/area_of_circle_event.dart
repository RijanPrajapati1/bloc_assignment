part of 'area_of_circle_bloc.dart';

@immutable
sealed class AreaOfCircleEvent {}

class AOCEvent extends AreaOfCircleEvent {
  final double radius;

  AOCEvent(this.radius);
}
