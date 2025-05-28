import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_smart/screens/other/widgets/common_scaffold.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CommonScaffold(
      title: "Page Not Found",
      pad: EdgeInsets.all(0),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 100, color: Colors.redAccent),
              const SizedBox(height: 24),
              Text(
                '404',
                style: theme.textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Page Not Found',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),
              Text(
                'The page you’re looking for doesn’t exist or has been moved.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                // style: ElevatedButton.styleFrom(
                //   backgroundColor: isDarkMode ? Colors.white : null,
                // ),
                icon: const Icon(Icons.home),
                label: const Text('Go to Home'),
                onPressed: () {
                  context.go('/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
