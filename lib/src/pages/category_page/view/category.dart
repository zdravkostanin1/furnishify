import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furnishify/src/models/furniture_item.dart';
import 'package:furnishify/src/pages/furniture_detail/view/furniture_details.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class CategoryPage extends StatefulWidget {
  final String categoryName;
  final List<FurnitureItem> furnitureItems;

  const CategoryPage({
    super.key,
    required this.categoryName,
    required this.furnitureItems,
  });

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  double minPrice = 0;
  double maxPrice = 1000;
  double minRating = 3;

  List<FurnitureItem> get filteredItems {
    return widget.furnitureItems.where((item) {
      return item.price >= minPrice &&
          item.price <= maxPrice &&
          item.rating >= minRating;
    }).toList();
  }

  void openFilterPanel() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Filter Options',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  // Price Range Filter
                  const Text(
                    'Price Range',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SfRangeSlider(
                    min: 0.0,
                    max: 1000.0,
                    values: SfRangeValues(minPrice, maxPrice),
                    interval: 200,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    onChanged: (SfRangeValues values) {
                      setModalState(() {
                        minPrice = values.start;
                        maxPrice = values.end;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  // Rating Filter
                  const Text(
                    'Minimum Rating',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  RatingBar.builder(
                    initialRating: minRating,
                    minRating: 1,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setModalState(() {
                        minRating = rating;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  // Apply Filter Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context); // Close filter panel
                        setState(() {}); // Refresh the page with filters applied
                      },
                      child: const Text(
                        'APPLY FILTERS',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          widget.categoryName,
          style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
                icon: const Icon(Icons.filter_list, color: Colors.black87),
                onPressed: openFilterPanel
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: filteredItems.length,
          itemBuilder: (context, index) {
            final item = filteredItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FurnitureDetailPage(furnitureItem: item),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image with Gradient Overlay
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                          child: Image.network(
                            item.images.first,
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "\$${item.price.toStringAsFixed(2)}",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}