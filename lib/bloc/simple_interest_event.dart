part of 'simple_interest_bloc.dart';

@immutable
sealed class SimpleInterestEvent {}

class SIEvent extends SimpleInterestEvent {
  final double principal;
  final double time;
  final double rate;

  SIEvent(this.principal, this.rate, this.time);
}
