part of 'furniture_bloc.dart';

@immutable
sealed class FurnitureEvent {}

@immutable
class FurnitureLoad extends FurnitureEvent {}
