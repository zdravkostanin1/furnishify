part of 'furniture_bloc.dart';

@immutable
abstract class FurnitureState extends Equatable {
  final List<FurnitureItem> furnitureItems;
  final List<FurnitureItem> mostLovedFurnitureItems;

  const FurnitureState({
    this.furnitureItems = const [],
    this.mostLovedFurnitureItems = const [],
  });

  @override
  List<Object> get props => [furnitureItems, mostLovedFurnitureItems];
}

class FurnitureInitial extends FurnitureState {}

class FurnitureLoading extends FurnitureState {}

class FurnitureLoaded extends FurnitureState {
  const FurnitureLoaded({required super.furnitureItems, required super.mostLovedFurnitureItems});

  @override
  List<Object> get props => [furnitureItems, mostLovedFurnitureItems];
}

class FurnitureMostLovedLoaded extends FurnitureState {
  const FurnitureMostLovedLoaded({required super.furnitureItems, required super.mostLovedFurnitureItems});

  @override
  List<Object> get props => [furnitureItems, mostLovedFurnitureItems];
}