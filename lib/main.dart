import 'package:basket_ball_conter/screens/basketBall.dart';
import 'package:basket_ball_conter/screens/basket_cubit/basket_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounterState());
}

class pointsCounterState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasketCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BasketBallBage(),
      ),
    );
  }
}
