import 'package:flutter/material.dart';
import 'package:skin_care_graduation_project/screens/home/category_products.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': 'Moisturizers', 'image': 'assets/images/cat_moisturizer.png'},
      {'name': 'Cleansers', 'image': 'assets/images/cat_cleanser.png'},
      {'name': 'Serums', 'image': 'assets/images/cat_serum.png'},
      {'name': 'Masks', 'image': 'assets/images/cat_mask.png'},
      {'name': 'Sunscreens', 'image': 'assets/images/cat_sunscreen.png'},
      {'name': 'Exfoliators', 'image': 'assets/images/cat_exfoliator.png'},
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(14),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (_) => CategoryProductsScreen(
                          categoryName: category['name']!,
                        ),
                  ),
                );
              },

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(category['image']!, height: 60),
                  const SizedBox(height: 12),
                  Text(
                    category['name']!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
