part of 'counter_bloc.dart';

class CounterState {
  final int incrementCount;
  final int decrementCount;

  CounterState({required this.incrementCount, required this.decrementCount});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(incrementCount: 0, decrementCount: 0);
}

// class DecrementState {
//   final int decrementCount;

//   DecrementState({required this.decrementCount});
// }

// class DecrementInitial extends DecrementState {
//   DecrementInitial() : super(decrementCount: 0);

// }


