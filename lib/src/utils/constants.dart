import 'package:flutter/material.dart';
import 'package:furnishify/src/models/furniture_item.dart';
import 'package:furnishify/src/pages/cart_page/view/cart.dart';
import 'package:furnishify/src/pages/furniture_catalog/view/furniture_catalog.dart';

final List<Widget> appPages = [
  const FurnitureCatalog(),
  const CartPage(),
];

final List<FurnitureItem> cartItems = [
  // FurnitureItem(
  //   name: 'Modern Sofa',
  //   images: [
  //     'https://i.pinimg.com/736x/3d/07/9e/3d079e78a775da8332ebd99fe41d3826.jpg',
  //     'https://example.com/sofa2.jpg',
  //     'https://example.com/sofa3.jpg',
  //     'https://example.com/sofa4.jpg',
  //     'https://example.com/sofa5.jpg',
  //   ],
  //   price: 399.99,
  //   rating: 4.6,
  //   reviews: 140,
  //   description: 'Comfortable and stylish sofa for your living room.',
  //   suggestions: [],
  //   quantity: 1,
  // ),
];

final List<FurnitureItem> mostLoved = [
  FurnitureItem(
    name: 'Modern Sofa',
    images: [
      'https://luxuryfurniturecompany.com/wp-content/uploads/2022/04/WLRSF2.jpg',
      'https://example.com/sofa2.jpg',
      'https://example.com/sofa3.jpg',
      'https://example.com/sofa4.jpg',
      'https://example.com/sofa5.jpg',
    ],
    price: 399.99,
    rating: 4.6,
    reviews: 140,
    description: 'Comfortable and stylish sofa for your living room.',
    suggestions: [],
    quantity: 1,
  ),
  FurnitureItem(
    name: 'Modern bean bag',
    images: [
      'https://target.scene7.com/is/image/Target/GUEST_e21ec384-15b9-45cd-8221-6b86d93db194?wid=488&hei=488&fmt=pjpeg',
      'https://example.com/chair2.jpg',
      'https://example.com/chair3.jpg',
      'https://example.com/chair4.jpg',
      'https://example.com/chair5.jpg',
    ],
    price: 149.99,
    rating: 4.3,
    reviews: 85,
    description: 'Ergonomic and modern chair design for maximum comfort.',
    suggestions: [],
    quantity: 1,
  ),
  FurnitureItem(
    name: 'Modern chair',
    images: [
      'https://imagescdn.simons.ca/images/13839-412021-5-A1_2/matte-black-base-modern-chair.jpg?__=4',
      'https://example.com/chair2.jpg',
      'https://example.com/chair3.jpg',
      'https://example.com/chair4.jpg',
      'https://example.com/chair5.jpg',
    ],
    price: 149.99,
    rating: 4.3,
    reviews: 85,
    description: 'Ergonomic and modern chair design for maximum comfort.',
    suggestions: [],
    quantity: 1,
  ),
];

/// Furniture data for the app.
final Map<String, List<FurnitureItem>> furnitureData = {
  'Sofas 🛋️': [
    FurnitureItem(
      name: 'Modern Sofa',
      images: [
        'https://i.pinimg.com/736x/3d/07/9e/3d079e78a775da8332ebd99fe41d3826.jpg',
        'https://example.com/sofa2.jpg',
        'https://example.com/sofa3.jpg',
        'https://example.com/sofa4.jpg',
        'https://example.com/sofa5.jpg',
      ],
      price: 399.99,
      rating: 4.6,
      reviews: 140,
      description: 'Comfortable and stylish sofa for your living room.',
      suggestions: [],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Classic Sofa',
      images: [
        'https://example.com/sofa4.jpg',
        'https://example.com/sofa5.jpg',
      ],
      price: 499.99,
      rating: 4.8,
      reviews: 90,
      description: 'Elegant sofa with classic design and premium comfort.',
      suggestions: [],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Compact Sofa',
      images: [
        'https://example.com/sofa5.jpg',
        'https://example.com/sofa6.jpg',
      ],
      price: 349.99,
      rating: 4.2,
      reviews: 60,
      description: 'Compact sofa perfect for smaller spaces.',
      suggestions: [],
      quantity: 1,
    ),
  ],
  'Chairs 🪑': [
    FurnitureItem(
      name: 'Ergonomic Chair',
      images: [
        'https://example.com/chair1.jpg',
        'https://example.com/chair2.jpg',
        'https://example.com/chair3.jpg',
        'https://example.com/chair4.jpg',
        'https://example.com/chair5.jpg',
      ],
      price: 149.99,
      rating: 4.3,
      reviews: 85,
      description: 'Ergonomic and modern chair design for maximum comfort.',
      suggestions: [],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Lounge Chair',
      images: [
        'https://example.com/chair3.jpg',
        'https://example.com/chair4.jpg',
      ],
      price: 199.99,
      rating: 4.5,
      reviews: 75,
      description: 'Relaxing lounge chair with soft cushioning.',
      suggestions: [],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Accent Chair',
      images: [
        'https://example.com/chair5.jpg',
        'https://example.com/chair6.jpg',
      ],
      price: 129.99,
      rating: 4.1,
      reviews: 55,
      description: 'Stylish accent chair to complement your decor.',
      suggestions: [],
      quantity: 1,
    ),
  ],
  'Tables 🍽️': [
    FurnitureItem(
      name: 'Dining Table',
      images: [
        'https://example.com/table1.jpg',
        'https://example.com/table2.jpg',
        'https://example.com/table3.jpg',
        'https://example.com/table4.jpg',
        'https://example.com/table5.jpg',
      ],
      price: 249.99,
      rating: 4.4,
      reviews: 98,
      description: 'Elegant dining table perfect for meals and gatherings.',
      suggestions: [],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Coffee Table',
      images: [
        'https://example.com/table3.jpg',
        'https://example.com/table4.jpg',
      ],
      price: 199.99,
      rating: 4.2,
      reviews: 65,
      description: 'Stylish coffee table to complete your living room setup.',
      suggestions: [],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Side Table',
      images: [
        'https://example.com/table5.jpg',
        'https://example.com/table6.jpg',
      ],
      price: 99.99,
      rating: 4.0,
      reviews: 45,
      description: 'Compact side table for your essentials.',
      suggestions: [],
      quantity: 1,
    ),
  ],
  'Beds 🛏️': [
    FurnitureItem(
      name: 'King Bed',
      images: [
        'https://media.designcafe.com/wp-content/uploads/2020/01/21003905/bed-design-for-your-home-768x512.jpg',
        'https://example.com/bed2.jpg',
        'https://example.com/bed3.jpg',
        'https://example.com/bed4.jpg',
        'https://example.com/bed5.jpg',
      ],
      price: 499.99,
      rating: 4.7,
      reviews: 130,
      description: 'Comfortable king-size bed with premium design.',
      suggestions: [
        FurnitureItem(
          name: 'Queen Bed',
          images: [
            'https://www.sierralivingconcepts.com/blog/wp-content/uploads/2023/08/Queen-size-bed-frame-Featured-Image-1024x1024.jpg',
            'https://example.com/bed4.jpg',
          ],
          price: 399.99,
          rating: 4.5,
          reviews: 110,
          description: 'Queen-size bed with soft mattress and modern look.',
          suggestions: [],
          quantity: 1,
        ),
        FurnitureItem(
          name: 'Twin Bed',
          images: [
            'https://example.com/bed5.jpg',
            'https://example.com/bed6.jpg',
          ],
          price: 299.99,
          rating: 4.3,
          reviews: 80,
          description: 'Cozy twin bed for smaller spaces.',
          suggestions: [],
          quantity: 1,
        ),
      ],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Queen Bed',
      images: [
        'https://example.com/bed3.jpg',
        'https://example.com/bed4.jpg',
      ],
      price: 399.99,
      rating: 4.5,
      reviews: 110,
      description: 'Queen-size bed with soft mattress and modern look.',
      suggestions: [],
      quantity: 1,
    ),
    FurnitureItem(
      name: 'Twin Bed',
      images: [
        'https://example.com/bed5.jpg',
        'https://example.com/bed6.jpg',
      ],
      price: 299.99,
      rating: 4.3,
      reviews: 80,
      description: 'Cozy twin bed for smaller spaces.',
      suggestions: [],
      quantity: 1,
    ),
  ],
};