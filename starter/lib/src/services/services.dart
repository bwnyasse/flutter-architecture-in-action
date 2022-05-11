import 'dart:convert';
import 'package:starter/src/models/models.dart';
import 'package:http/http.dart' as http;

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

List<Job> getRecommandationsJobs(List<Job> jobs, {String category = 'Software Development'}) {
  final recommandedJobs = jobs.where((element) => element.category == category).take(10).toList();
  return recommandedJobs;
}
