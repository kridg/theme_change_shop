import 'package:flutter/material.dart';
import 'package:minimal_shop_flutter/components/button.dart';
import 'package:minimal_shop_flutter/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import '../theme/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        title: const Text('Settings'),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Dark Mode'),
              Switch(
                  value: Provider.of<ThemeProvider>(context).themeData==darkMode,
                  onChanged: (bool value){
                    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                  },
                  ),
            ],
          ),
            ),
      ),
    );
  }
}
