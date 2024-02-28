import 'package:bloc/bloc.dart';
import 'package:calculator/blocs/bloc/repo_calculator.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final CalculatorRepo calculatorRepo = CalculatorRepo();
  CalculatorBloc() : super(CalculatorInitial()) {
    on<CalculatorEvent>((event, emit) {
      if (event is Addevent) {
        num result = calculatorRepo.add(num1: event.num1, num2: event.num2);
        emit(Calculatorresult(result: result));
      } else if (event is Subtractevent) {
        num result =
            calculatorRepo.subtract(num1: event.num1, num2: event.num2);
        emit(Calculatorresult(result: result));
      } else if (event is Multipleevent) {
        num result =
            calculatorRepo.multiple(num1: event.num1, num2: event.num2);
        emit(Calculatorresult(result: result));
      } else if (event is DivideEvent) {
        num result = calculatorRepo.divide(num1: event.num1, num2: event.num2);
        emit(Calculatorresult(result: result));
      }
    });
  }
}
