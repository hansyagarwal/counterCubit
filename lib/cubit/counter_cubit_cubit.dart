import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_cubit_state.dart';

class CounterCubitCubit extends Cubit<CounterState> {
  CounterCubitCubit() : super(CounterState(countervalue: 0));

  void increment() => emit(CounterState(countervalue: state.countervalue + 1,wasIncremented: true));

  void decrement() => emit(CounterState(countervalue: state.countervalue - 1,wasIncremented: false));
}
