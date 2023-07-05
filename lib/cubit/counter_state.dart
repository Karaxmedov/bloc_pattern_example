part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  const CounterInitial({required int startValue}) : super(counter: startValue);
}

class MyCounterState extends CounterState {
  const MyCounterState({required int newValue}) : super(counter: newValue);
}
