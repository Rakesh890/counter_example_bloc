import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../counter/cubit/counter_cubit.dart';
import '../widget/reset_dialog.dart';

class CounterDetailPage extends StatelessWidget {
  CounterDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: BlocBuilder<CounterCubit, dynamic>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () =>
                              context.read<CounterCubit>().incrementValue(),
                          icon: Icon(Icons.add)),
                      Text("Counter Count : $state"),
                      IconButton(
                          onPressed: () =>
                              context.read<CounterCubit>().decrementValue(),
                          icon: Icon(Icons.remove)),
                    ],
                  ),
                  TextButton(
                      child: Text("Reset Now"),
                      onPressed: () {
                        if (state != 0) openResetDialog(context);
                      })
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
