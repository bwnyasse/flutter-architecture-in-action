import 'package:flutter/material.dart';

import '../models/models.dart';
import '../services/services.dart' as service;

//

class Favorites extends StatefulWidget {
  final List<Job> jobs;

  const Favorites({Key? key, required this.jobs}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Job> favorites = [];

  @override
  void initState() {
    loadFavorites();
    super.initState();
  }

  Future<void> loadFavorites() async {
    final values = await service.loadFavoritesJobs(widget.jobs);
    setState(() {
      favorites = values;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your favorites ${favorites.length.toString()} )",
          style: const TextStyle(fontWeight: FontWeight.bold, height: 1.2),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black, 
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 32, left: 32, bottom: 8),
              child: Column(
                children: buildFavorites(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildFavorites() {
    List<Widget> list = [];
    for (var i = 0; i < favorites.length; i++) {
      list.add(buildFavorite(favorites[i]));
    }
    return list;
  }

  Widget buildFavorite(Job application) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(application.logo),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      application.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      application.company,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    application.salary,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
