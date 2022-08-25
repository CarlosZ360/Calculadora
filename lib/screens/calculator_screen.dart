
import 'package:calculadora/bloc/Calculadora/calculadora_bloc.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/resultados.dart';



class CalculatorScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final calculadoraBloc= BlocProvider.of<CalculadoraBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: 10 ),
          child: Column(
            children: [
              
              Expanded(
                child: Container(),
              ),

               Resultados(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: 'AC',
                    bgColor: Color.fromARGB(255, 230, 56, 56),
                    onPressed: () => calculadoraBloc.add( AC()),
                  ),
                  CalculatorButton( 
                    text: '+/-',
                    bgColor: Color.fromARGB(255, 81, 221, 76),
                    onPressed: () => calculadoraBloc.add(NegativoPositivo()),
                  ),
                  CalculatorButton( 
                    text: 'del',
                    bgColor: Color.fromARGB(255, 81, 221, 76),
                    onPressed: () => calculadoraBloc.add(Borrar()),
                  ),
                  CalculatorButton( 
                    text: '/',
                    bgColor: Color.fromARGB(255, 59, 174, 240),
                    onPressed: () => calculadoraBloc.add(OperacionCal('/')),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '7',
                    onPressed: () => calculadoraBloc.add(AgregaNumero('7')),
                  ),
                  CalculatorButton( 
                    text: '8',
                    onPressed: () => calculadoraBloc.add(AgregaNumero('8')),
                  ),
                  CalculatorButton( 
                    text: '9',
                    onPressed: () => calculadoraBloc.add(AgregaNumero('9')),
                  ),
                  CalculatorButton( 
                    text: 'X',
                    bgColor: Color.fromARGB(255, 59, 174, 240),
                    onPressed: () => calculadoraBloc.add(OperacionCal('X')),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '4', 
                    onPressed: () => calculadoraBloc.add(AgregaNumero('4')),
                  ),
                  CalculatorButton( 
                    text: '5', 
                    onPressed: () => calculadoraBloc.add(AgregaNumero('5')),
                  ),
                  CalculatorButton( 
                    text: '6', 
                    onPressed: () => calculadoraBloc.add(AgregaNumero('6')),
                  ),
                  CalculatorButton( 
                    text: '-',
                    bgColor: Color.fromARGB(255, 59, 174, 240),
                    onPressed: () => calculadoraBloc.add(OperacionCal('-')),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '1', 
                    onPressed: () => calculadoraBloc.add(AgregaNumero('1')),
                  ),
                  CalculatorButton( 
                    text: '2', 
                    onPressed: () => calculadoraBloc.add(AgregaNumero('2')),
                  ),
                  CalculatorButton( 
                    text: '3', 
                    onPressed: () => calculadoraBloc.add(AgregaNumero('3')),
                  ),
                  CalculatorButton(
                    text: '+',  
                    bgColor: Color.fromARGB(255, 59, 174, 240),
                    onPressed: () => calculadoraBloc.add(OperacionCal('+')),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '0', 
                    big: true,
                    onPressed: () => calculadoraBloc.add(AgregaNumero('0')),
                  ),
                  CalculatorButton( 
                    text: '.', 
                    onPressed: () => calculadoraBloc.add(PuntoDecimal()),
                  ),
                  CalculatorButton( 
                    text: '=',
                    bgColor: Color.fromARGB(255, 59, 174, 240),
                    onPressed: () => calculadoraBloc.add(ResultadoCal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
   );
  }
}