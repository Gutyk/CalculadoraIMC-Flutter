// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_card.dart';
// ignore: unused_import
import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: GenderCard(icon: Icons.male, genderText: 'Male'),                    
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: GenderCard(icon: Icons.female, genderText: 'Female'),                    
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CustomCard(),
              ),
              Expanded(
                child: CustomCard(),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
