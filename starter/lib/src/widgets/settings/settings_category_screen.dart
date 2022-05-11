import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:starter/src/models/models.dart';

class SettingsCategoryScreen extends StatefulWidget {
  const SettingsCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SettingsCategoryScreen> createState() => _SettingsCategoryScreenState();
}

class _SettingsCategoryScreenState extends State<SettingsCategoryScreen> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Change categories",
          style: TextStyle(fontWeight: FontWeight.bold, height: 1.2),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(tiles: [
            for (int k in categoryName.keys)
              SettingsTile(
                title: Text(categoryName[k].toString()),
                trailing: trailingWidget(k),
                onPressed: (BuildContext context) {
                  changeCategory(k);
                },
              ),
          ]),
        ],
      ),
    );
  }

  Widget trailingWidget(int index) {
    return (categoryIndex == index)
        ? const Icon(
            Icons.check,
            color: Colors.blue,
          )
        : const Icon(null);
  }

  void changeCategory(int index) {
    setState(() {
      categoryIndex = index;
    });
  }
}
