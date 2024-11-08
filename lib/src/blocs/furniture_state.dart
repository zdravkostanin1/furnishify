part of 'furniture_bloc.dart';

@immutable
sealed class FurnitureState {}

final class FurnitureInitial extends FurnitureState {}

final class FurnitureLoading extends FurnitureState {}

final class FurnitureLoaded extends FurnitureState {
  final List<FurnitureItem> items;

  FurnitureLoaded({required this.items});
}
