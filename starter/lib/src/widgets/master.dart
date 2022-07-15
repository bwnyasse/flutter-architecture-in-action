import 'package:flutter/material.dart';
import 'package:starter/src/models/models.dart';

//
import '../widgets/jobs.dart';
import 'favorites.dart';
import '../services/services.dart' as service;

class Master extends StatefulWidget {
  const Master({Key? key}) : super(key: key);

  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  String? selectedItem;

  Widget currentWidgetView = const Jobs(jobs: []);

  List<Job> jobs = [];

  @override
  void initState() {
    super.initState();
    loadJobs();
    // setState(() {});
  }

  Future<void> loadJobs() async {
    JobResponse jobResponse = await service.getRemoteJobs();
    setState(() {
      jobs = jobResponse.jobs;
      selectedItem = navigationItems[0];
      currentWidgetView = Jobs(jobs: jobs);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: currentWidgetView,
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var navigationItemKey in navigationItems.keys) buildNavigationItem(navigationItemKey),
          ],
        ),
      ),
    );
  }

  Widget buildNavigationItem(int navigationItemKey) {
    return GestureDetector(
      onTap: () {
        setState(() {
          switch (navigationItemKey) {
            case 0:
              currentWidgetView = Jobs(jobs: jobs);
              break;
            case 1:
              currentWidgetView = Favorites(jobs: jobs);
              break;
          }
          selectedItem = navigationItems[navigationItemKey];
        });
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: selectedItem == navigationItems[navigationItemKey] ? 1.0 : 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              navigationItems[navigationItemKey] ?? "",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            selectedItem == navigationItems[navigationItemKey]
                ? Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
