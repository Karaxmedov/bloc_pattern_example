import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(startValue: 25)) {
    on<IncrementEvent>((event, emit) {
      emit(MyCounterState(newValue: state.counter + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(MyCounterState(newValue: state.counter - 1));
    });
  }
}
