import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:starter/src/widgets/settings/settings_category_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                value: const Text('Software Development'),
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
