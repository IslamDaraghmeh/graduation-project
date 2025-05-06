import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final suggestions = [
      {
        'name': 'Hydrating Cream',
        'desc': 'For dry skin',
        'image': 'assets/images/hydrating_cream.png',
      },
      {
        'name': 'Oil Control Foam',
        'desc': 'For oily skin',
        'image': 'assets/images/oil_control.png',
      },
      {
        'name': 'SPF 50 Sunscreen',
        'desc': 'Sun protection',
        'image': 'assets/images/sunscreen.png',
      },
      {
        'name': 'Vitamin C Serum',
        'desc': 'Brightens skin',
        'image': 'assets/images/vitamin_c.png',
      },
      {
        'name': 'Clay Mask',
        'desc': 'Deep cleansing',
        'image': 'assets/images/clay_mask.png',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: suggestions.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final item = suggestions[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                // Navigate to product detail
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(item['image']!, height: 70),
                    const SizedBox(height: 12),
                    Text(
                      item['name']!,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['desc']!,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
