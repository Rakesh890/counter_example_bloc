import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void incrementValue() => {
        if (state == 0 || state > 0) emit(state + 1),
      };

  void decrementValue() => {if (state != 0) emit(state - 1)};

  void resetValue() => emit(0);



}
