import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    
    on<Increment>((event, emit) {
      // final currentStateValue = state.count;
      final currentStateValue = state.incrementCount;
      final incrementedValue = currentStateValue + 1;
       print('increment called');

      return emit(CounterState(incrementCount: incrementedValue, decrementCount: state.decrementCount));
    });

    on<Decrement>((event, emit) {
      // final currentStateValue = state.count;
      final currentStateValue = state.decrementCount;
      final decrementedValue = currentStateValue - 1;
       print('decrementBloc called');

      return emit(CounterState(incrementCount: state.incrementCount ,decrementCount: decrementedValue));
      }); 
  }
}


