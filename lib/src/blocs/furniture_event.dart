part of 'furniture_bloc.dart';

@immutable
abstract class FurnitureEvent extends Equatable {
  const FurnitureEvent();

  @override
  List<Object> get props => [];
}

class FurnitureLoad extends FurnitureEvent {}

class FurnitureMostLovedLoad extends FurnitureEvent {}