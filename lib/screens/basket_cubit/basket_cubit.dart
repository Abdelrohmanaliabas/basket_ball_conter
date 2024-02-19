import 'package:basket_ball_conter/screens/basket_cubit/basket_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(CounterAIncremantState());

  int teamAPoints = 0;

  int teamBPoints = 0;
  void teamIncrement({required String team, required int numOfButton}) {
    if (team == 'A') {
      teamAPoints += numOfButton;
      emit(CounterAIncremantState());
    } else {
      teamBPoints += numOfButton;
      emit(CounterBIncremantState());
    }
  }
}
