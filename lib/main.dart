import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furnishify/app.dart';
import 'package:furnishify/src/blocs/furniture_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => FurnitureBloc(),
      child: const App(),
    ),
  );
}