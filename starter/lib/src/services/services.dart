import 'dart:convert';
import 'package:starter/src/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

Future<JobResponse> getRemoteJobs() async {
  final client = http.Client();

  final url = Uri.parse('https://remotive.com/api/remote-jobs?limit=50');
  final response = await client.get(url);
  if (response.statusCode != 200) {
    //TODO
  }

  final data = json.decode(response.body);

  return JobResponse.fromJson(data);
}

List<Job> getRecommandationsJobs(List<Job> jobs, {String? category = 'Software Development'}) {
  final recommandedJobs = jobs.where((element) => element.category == category).take(10).toList();
  return recommandedJobs;
}

Future<List<Job>> loadFavoritesJobs(List<Job> jobs) async {
  final List<String> items = await readFavorites();

  return jobs.where((element) => items.contains(element.id.toString())).toList();
}

Future<void> writeCategory(int? categoryIndex) async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();

  await prefs.setInt('jobCategory', categoryIndex ?? 0);
}

Future<int?> readCategory() async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();

  return prefs.getInt('jobCategory');
}

Future<void> writeFavorites({required int id, bool add = true}) async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();

  final List<String> items = await readFavorites();
  String idAsString = id.toString();
  items.remove(idAsString);
  if (add) items.add(idAsString);

// Save an list of strings to 'items' key.
  await prefs.setStringList('favorites', items);
}

Future<List<String>> readFavorites() async {
  // Obtain shared preferences.
  final prefs = await SharedPreferences.getInstance();

  return prefs.getStringList('favorites') ?? [];
}
