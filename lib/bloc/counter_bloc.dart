import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)){
    on<CounterIncrementPressed>((event, emit){
      emit(CounterState(state.count + 1)); // increment the count by 1
    });
    on<CounterDecrementPressed> ((event, emit){
    emit(CounterState(state.count - 1)); // decrement the count by 1
    });
  }
}