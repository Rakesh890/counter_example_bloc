import 'package:counter_example_bloc/app/counter/cubit/counter_cubit.dart';
import 'package:counter_example_bloc/app/counter_detail/view/counter_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: () =>
                          context.read<CounterCubit>().incrementValue(),
                          icon: Icon(Icons.add)),
                      Text("Counter Count : $state"),
                      IconButton(onPressed: () =>
                          context.read<CounterCubit>().decrementValue(),
                          icon: Icon(Icons.remove)),
                    ],
                  ),
                  TextButton(child:Text("Reset Now"),onPressed: () => context.read<CounterCubit>().resetValue(),),
                  RaisedButton.icon(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => CounterDetailPage()));
                  }, icon: Icon(Icons.arrow_forward), label: Text("Counter Details"))
                ],
              );

            },
          ),
        ),
      ),
    );
  }
}
