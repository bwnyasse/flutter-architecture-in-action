import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:starter/src/models/models.dart';
import 'package:starter/src/widgets/settings/settings_category_screen.dart';

import '../../services/services.dart' as service;

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String? category;

  @override
  void initState() {
    loadCategory();
    print("here");
    super.initState();
  }

  Future<void> loadCategory() async {
    int categoryIndex = await service.readCategory() ?? 0;
    setState(() {
      category = categoryName[categoryIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, height: 1.2),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Common'),
            tiles: [
              SettingsTile.navigation(
                title: const Text('Categories'),
                value: Text(category ?? ''),
                leading: const Icon(Icons.computer),
                onPressed: (context) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const SettingsCategoryScreen(),
                  ));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
