class FurnitureItem {
  final String name;
  final List<String> images;
  final double price;
  final double rating;
  final int reviews;
  final String description;
  final List<FurnitureItem> suggestions;
  final int quantity;

  FurnitureItem({
    required this.name,
    required this.images,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.description,
    required this.suggestions,
    required this.quantity,
  });

  factory FurnitureItem.fromJson(Map<String, dynamic> json) {
    return FurnitureItem(
      name: json['name'] as String,
      images: List<String>.from(json['images'] as List),
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      reviews: json['reviews'] as int,
      description: json['description'] as String,
      suggestions: (json['suggestions'] as List)
          .map((item) => FurnitureItem.fromJson(item as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int,
    );
  }
}