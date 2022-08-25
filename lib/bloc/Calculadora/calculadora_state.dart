part of 'calculadora_bloc.dart';


class CalculadoraState {

  final String Resultado;
  final String PrimerNumero;
  final String SegundoNumero;
  final String Operacion;

  CalculadoraState({
  this.Resultado='0', 
  this.PrimerNumero='0', 
  this.SegundoNumero='0', 
  this.Operacion=' '
  });
  CalculadoraState copia({

   String? Resultado,
   String? PrimerNumero,
   String? SegundoNumero,
   String? Operacion,

  })=>CalculadoraState(
    Resultado: Resultado ?? this.Resultado,
    PrimerNumero: PrimerNumero ?? this.PrimerNumero,
    SegundoNumero: SegundoNumero ?? this.SegundoNumero,
    Operacion: Operacion ?? this.Operacion,


  );
}

