part of 'initializer_bloc.dart';

class InitializerState extends Equatable {
  final InitializerStatus status;

  const InitializerState({
    this.status = InitializerStatus.loading,
  });

  InitializerState copyWith({
    InitializerStatus? status,
  }) {
    return InitializerState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        status,
      ];
}
