import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

///Bloc
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounter>((event, emit) {
      emit(state + 1);
    });
  }
}
