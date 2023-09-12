part of 'home_screen_bloc.dart';

class HomeScreenState extends Equatable {
  final HomeScreenStatus status;
  final int counter;

  const HomeScreenState({
    this.status = HomeScreenStatus.loading,
    this.counter = 0,
  });

  HomeScreenState copyWith({
    HomeScreenStatus? status,
    int? counter,
  }) {
    return HomeScreenState(
      status: status ?? this.status,
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object?> get props => [
        status,
        counter,
      ];
}
