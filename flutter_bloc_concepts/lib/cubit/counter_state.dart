part of 'counter_cubit.dart';

class CounterState {
  int counterValue = 0;
  bool wasIncremented = false;

  CounterState({
    required this.counterValue,
    required this.wasIncremented,
  });
}
