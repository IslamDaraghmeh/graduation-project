import 'package:flutter/material.dart';
import '/l10n/s.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    // مثال: جلب نوع البشرة من arguments (يمكن استبداله حسب API الحقيقي)
    final skinType =
        ModalRoute.of(context)?.settings.arguments as String? ?? 'Oily';

    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 24),
              Center(child: Image.asset('assets/images/logo.png', height: 180)),
              const SizedBox(height: 32),
              Text(
                t.resultTitle,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: isDark ? Colors.grey[900] : Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      skinType,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      _getSkinTypeDescription(skinType),
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed:
                    () => Navigator.pushReplacementNamed(context, '/home'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(t.getStarted, style: const TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed:
                    () => Navigator.pushReplacementNamed(context, '/home'),
                child: Text(t.skip),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getSkinTypeDescription(String type) {
    switch (type.toLowerCase()) {
      case 'oily':
        return 'Your skin produces excess oil. Consider using oil-free products.';
      case 'dry':
        return 'Your skin lacks moisture. Hydration is essential.';
      case 'combination':
        return 'You have both oily and dry areas. Use balanced skincare.';
      case 'normal':
        return 'Your skin is balanced. Maintain a regular routine.';
      default:
        return 'Skin type information not available.';
    }
  }
}
