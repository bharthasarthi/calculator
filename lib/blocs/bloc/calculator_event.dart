part of 'calculator_bloc.dart';

abstract class CalculatorEvent {}

class Addevent extends CalculatorEvent {
  final num num1;
  final num num2;
  Addevent({required this.num1, required this.num2});
}

class Subtractevent extends CalculatorEvent {
  final num num1;
  final num num2;
  Subtractevent({required this.num1, required this.num2});
}

class Multipleevent extends CalculatorEvent {
  final num num1;
  final num num2;
  Multipleevent({required this.num1, required this.num2});
}

class DivideEvent extends CalculatorEvent {
  final num num1;
  final num num2;
  DivideEvent({required this.num1, required this.num2});
}
