part of 'calculator_bloc.dart';

abstract class CalculatorState {}

final class CalculatorInitial extends CalculatorState {}

final class Calculatorresult extends CalculatorState {
  final num result;
  Calculatorresult({required this.result});
}
