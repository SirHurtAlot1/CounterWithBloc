/*

THIS IS CUBIT: Simplified version of bloc for ease state management


*/
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //constructor for initial state
  CounterCubit(super.initialState);

  //increment
  void increment() => emit(state + 1);

  //decrement
  void decrement() => emit(state - 1);

  // on state change => do smth

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    //prints changes of state in console
    //change has info about current state and next
    print(change);
  }
}
