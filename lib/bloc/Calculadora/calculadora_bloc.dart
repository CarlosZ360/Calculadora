import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculadora_event.dart';
part 'calculadora_state.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, CalculadoraState> {
  CalculadoraBloc() : super(CalculadoraState());
  @override
  Stream<CalculadoraState> mapEventToState(
    CalculadoraEvent event,
    ) 
  async*{
      if(event is AC){
        yield* this._resetAC();
      } else if(event is AgregaNumero){
        yield state.copia(
        
        Resultado: (state.Resultado =='0')
                    ? event.numero
                    : state.Resultado+event.numero,
        );
        
      } else if (event is NegativoPositivo){
        if(state.Resultado !='0'){

       
        yield state.copia(
          
          
          Resultado: state.Resultado.contains('-')
                      ? state.Resultado.replaceFirst('-', '')
                      : '-' +state.Resultado
          
        );
        }
      } else if(event is Borrar){

        yield state.copia(
          Resultado: state.Resultado.length>1
                      ? state.Resultado.substring(0,state.Resultado.length -1)
                      : '0'
        );
      } else if (event is OperacionCal){
        yield state.copia(
            PrimerNumero: state.Resultado,
            Resultado: '0',
            Operacion: event.Operacion,
            SegundoNumero: '0'
        );
      }else if (event is ResultadoCal){
          yield* _CalculateResult();

          
      }else if(event is PuntoDecimal){
        if(state.Resultado.contains('.')) return;

        if(state.Resultado.startsWith('0')){
          yield state.copia(

          Resultado: '0.',
          );
        }else{
          yield state.copia(
          Resultado: state.Resultado +'.',
          );
        }
      }
  } 
  Stream<CalculadoraState>_resetAC() async*{
        yield CalculadoraState(
        PrimerNumero: '0',
        SegundoNumero: '0',
        Resultado: '0',
        Operacion: ' ');

  }
  Stream<CalculadoraState> _CalculateResult() async*{

        final double num1= double.parse(state.PrimerNumero);
        final double num2= double.parse(state.Resultado);
        switch(state.Operacion){
          case '+':
            yield state.copia(
              SegundoNumero: state.Resultado,
              Resultado: '${num1+num2}'
            );
          break;
          case '-':
            yield state.copia(
              SegundoNumero: state.Resultado,
              Resultado: '${num1-num2}'
            );
          break;
          case 'X':
            yield state.copia(
              SegundoNumero: state.Resultado,
              Resultado: '${num1*num2}'
            );
          break;
          case '/':
            yield state.copia(
              SegundoNumero: state.Resultado,
              Resultado: '${num1/num2}'
            );
          break;
          
          default:
                yield state;

        }

        
  }

}
