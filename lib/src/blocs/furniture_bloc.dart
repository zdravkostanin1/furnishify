import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furnishify/src/models/furniture_item.dart';

part 'furniture_event.dart';
part 'furniture_state.dart';

class FurnitureBloc extends Bloc<FurnitureEvent, FurnitureState> {
  FurnitureBloc() : super(FurnitureInitial()) {
    on<FurnitureEvent>((event, emit) {});
    on<FurnitureLoad>(_onFurnitureLoad);
  }

  FutureOr<void>_onFurnitureLoad(FurnitureLoad event, Emitter<FurnitureState> emit) async {
    final jsonString = await rootBundle.loadString('assets/data/furniture_data.json');
    final jsonData = jsonDecode(jsonString) as List;

    final items = jsonData.map((item) => FurnitureItem.fromJson(item)).toList();
    emit(FurnitureLoaded(items: items));
    // return jsonData.map((item) => FurnitureItem.fromJson(item)).toList();
  }
}
