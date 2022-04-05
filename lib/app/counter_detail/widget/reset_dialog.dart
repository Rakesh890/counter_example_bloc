import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../counter/cubit/counter_cubit.dart';

openResetDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure?"),
          content: Text("Do you want to reset counter value"),
          actions: [
            FlatButton(
                onPressed: () {
                  context.read<CounterCubit>().resetValue();
                  Navigator.pop(context);
                },
                child: Text("Yes")),
            FlatButton(
                onPressed: () => Navigator.pop(context), child: Text("No"))
          ],
        );
      });
}
