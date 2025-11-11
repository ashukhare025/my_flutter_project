import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/BlocCounter/bloc/counter_event.dart';
import 'package:my_project/BlocCounter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState(count: 0)) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterIncrementState(incCount: event.incCount + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(CounterDecrementState(decCount: event.decCount - 1));
    });
  }
}
