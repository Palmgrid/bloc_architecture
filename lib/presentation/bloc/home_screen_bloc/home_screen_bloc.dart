import '../../export.dart';
import 'home_screen_status.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(const HomeScreenState()) {
    on<IncrementEvent>(_incrementEvent);
    on<DecrementEvent>(_decrementEvent);
  }

  void _incrementEvent(IncrementEvent event, emit) {
    emit(
      state.copyWith(
        counter: event.counter,
      ),
    );
  }

  void _decrementEvent(DecrementEvent event, emit) {
    emit(
      state.copyWith(
        counter: event.counter,
      ),
    );
  }
}
