class FurnitureItem {
  final String name;
  final List<String> images;
  final double price;
  final double rating;
  final int reviews;
  final String description;
  final List<FurnitureItem> suggestions;

  FurnitureItem({
    required this.name,
    required this.images,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.suggestions,
  });
}