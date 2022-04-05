import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterObserver extends BlocObserver{
  ///observe all state changes
  @override
  void onChange(BlocBase bloc, Change change)
  {
    super.onChange(bloc, change);
  }
}

