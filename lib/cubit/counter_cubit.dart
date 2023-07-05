import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterInitial(startValue: 20));
  void increase() {
    emit(MyCounterState(newValue: state.counter + 1));
  }

  void decrease() {
    emit(MyCounterState(newValue: state.counter - 1));
  }
}
