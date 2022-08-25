import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Calculadora/calculadora_bloc.dart';
import 'line_separator.dart';
import 'main_result.dart';

class Resultados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculadoraBloc, CalculadoraState>(
      builder: (context, state) {
        if(state.PrimerNumero == '0' && state.SegundoNumero =='0'){
           return MainResultText(text: state.Resultado.endsWith('.0')
              ?state.Resultado.substring(0,state.Resultado.length-2)
              : state.Resultado
          );
        }
        return Column(
          children: [
            SubResult(text: state.PrimerNumero),
            SubResult(text: state.Operacion),
            SubResult(text: state.SegundoNumero.endsWith('.0')
              ?state.SegundoNumero.substring(0,state.SegundoNumero.length-2)
              : state.SegundoNumero),
            LineSeparator(),
            MainResultText(text: state.Resultado.endsWith('.0')
              ?state.Resultado.substring(0,state.Resultado.length-2)
              : state.Resultado
            ),

          ],
        );
      },
    );
  }
}
