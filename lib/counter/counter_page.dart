/*

COUNTER PAGE: Provides CounterCubit to CounterView, which is UI

need to use BlocProvider

*/

import 'package:counter_bloc/counter/counter_cubit.dart';
import 'package:counter_bloc/counter/counter_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    //intial state of cubit is 0, which is what counter starts from
    return BlocProvider(
      create: (context) => CounterCubit(0),
      //listener used to react to state changes
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          //pop up dialog when state reaches 10
          if (state == 10) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                content: Text('10!!'),
              ),
            );
          }
        },
        child: const CounterView(),
      ),
    );
  }
}
