part of 'home_screen_bloc.dart';

abstract class HomeScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class IncrementEvent extends HomeScreenEvent {
  final int counter;

  IncrementEvent({required this.counter});
}

class DecrementEvent extends HomeScreenEvent {
  final int counter;

  DecrementEvent({required this.counter});
}
