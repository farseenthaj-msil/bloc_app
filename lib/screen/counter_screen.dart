import 'package:flutter/material.dart';
import 'package:bloc_app/increment/counter_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../increment/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  final String title;
  const CounterScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Incremented Count  ',
                        ),
                        // Text(
                        //   'Decremented Count:',
                        // ),
                        BlocBuilder<CounterBloc, CounterState>(
                          builder: (context, state) {
                            //print('BlocProvider');
                            return Text(
                              '${state.incrementCount}' /*, decrement: ${state.decrementCount}'*/,
                              style: Theme.of(context).textTheme.headline4,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                // BlocBuilder<CounterBloc, CounterState>(
                //     builder: (context, state) {
                //       print('BlocProvider');
                //       return Text(
                //         '${state.incrementCount}' /*, decrement: ${state.decrementCount}'*/,
                //         style: Theme.of(context).textTheme.headline4,
                //       );
                //     },
                //   ),
                Column(
                  children: [
                    const Text(
                      'Decremented Count  ',
                    ),
                    BlocBuilder<CounterBloc, CounterState>(
                      builder: (context, state) {
                        return Text(
                          '${state.decrementCount}' /*, decrement: ${state.decrementCount}'*/,
                          style: Theme.of(context).textTheme.headline4,
                        );
                      },
                    ),
                  ],
                ),
                // BlocBuilder<CounterBloc, CounterState>(
                  
                //   builder: (context, state) {
                //     return Text(
                //       '${state.decrementCount}' /*, decrement: ${state.decrementCount}'*/,
                //       style: Theme.of(context).textTheme.headline4,
                //     );
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            tooltip: 'Increment',
              child: const Icon(Icons.add),
            onPressed: () {
    
              context.read<CounterBloc>().add(Increment());

              //OR

              //BlocProvider.of<CounterBloc>(context).add(Increment());
            },
          ),
          FloatingActionButton(
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
              onPressed: () {
                context.read<CounterBloc>().add(Decrement());

                //OR

                //BlocProvider.of<CounterBloc>(context).add(Decrement());
              }
          ),
          // FloatingActionButton(
          //   tooltip: 'Increment',
          //     child: const Icon(Icons.add),
          //   onPressed: () {
    
          //     context.read<CounterBloc>().add(Increment());

          //     //OR

          //     //BlocProvider.of<CounterBloc>(context).add(Increment());
          //   },
          // ),
        ],
      ),
    );
  }
}
