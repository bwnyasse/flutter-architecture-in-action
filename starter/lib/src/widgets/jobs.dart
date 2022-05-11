import 'package:flutter/material.dart';
import 'package:starter/src/widgets/jobs/recent_job.dart';
import 'package:starter/src/widgets/jobs/recommandation_job.dart';

//
import '../models/models.dart';
import '../services/services.dart';
import 'jobs/drawer_job.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  List<Job> jobs = [];
  List<Job> recommandedJobs = [];

  @override
  void initState() {
    loadJobs();
    super.initState();
  }

  Future<void> loadJobs() async {
    JobResponse jobResponse = await getRemoteJobs();
    setState(() {
      jobs = jobResponse.jobs;
      recommandedJobs = getRecommandationsJobs(jobs);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Developer Jobs",
          style: TextStyle(fontWeight: FontWeight.bold, height: 1.2),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        /* actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
              ))
        ],*/
      ),
      drawer: const DrawerJob(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /*Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        buildFilterOption("Developer"),
                        buildFilterOption("San Francisco"),
                        buildFilterOption(r"$30 - 50h"),
                        buildFilterOption("Part-Time"),
                      ],
                    ),
                  ),*/
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Software Development",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        const SizedBox(width: 32),
                        for (var i = 0; i < recommandedJobs.length; i++) RecommandationJob(job: recommandedJobs[i]),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Text(
                      "Recently added",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        for (var i = jobs.length - 1; i > -1; i--) RecentJob(job: jobs[i]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
