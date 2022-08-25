part of 'calculadora_bloc.dart';

@immutable
abstract class CalculadoraEvent {}

class AgregaNumero extends CalculadoraEvent{
  final String numero;

  AgregaNumero(this.numero);
}

class AC extends CalculadoraEvent{}

class NegativoPositivo extends CalculadoraEvent{}

class Borrar extends CalculadoraEvent{}

class OperacionCal extends CalculadoraEvent{
  final String Operacion;

  OperacionCal(this.Operacion);

 
}
class ResultadoCal extends CalculadoraEvent{}

class PuntoDecimal extends CalculadoraEvent{}

