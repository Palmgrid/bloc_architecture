part of 'initializer_bloc.dart';

abstract class InitializerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class NavigateToHome extends InitializerEvent{}
