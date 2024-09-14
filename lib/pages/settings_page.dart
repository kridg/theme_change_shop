import 'package:flutter/material.dart';
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
        title: Text('Settings'),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: EdgeInsets.all(25),
    decoration: BoxDecoration(
    color: Theme.of(context).colorScheme.secondary,
    borderRadius: BorderRadius.circular(12),
      ),
        child: Row(
          children: [
            Text('Dark Mode'),


          ],
        ),
    ),
    );
  }
}
