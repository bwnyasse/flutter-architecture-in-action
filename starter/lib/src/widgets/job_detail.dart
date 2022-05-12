import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:starter/src/services/services.dart' as service;

//
import '../models/models.dart';
import 'jobs/apply_job.dart';

class JobDetail extends StatefulWidget {
  final Job job;

  const JobDetail({Key? key, required this.job}) : super(key: key);

  @override
  State<JobDetail> createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  List<String> favorites = [];
  bool isFavorite = false;

  @override
  void initState() {
    loadFavorites();
    super.initState();
  }

  Future<void> loadFavorites() async {
    final values = await service.readFavorites();
    setState(() {
      favorites = values;
      isFavorite = favorites.contains(widget.job.id.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.job.company,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.job.logo),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  widget.job.title,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  widget.job.location,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          widget.job.category,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        widget.job.salary,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Html(data: widget.job.description),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Center(
                      child: IconButton(
                        icon: isFavorite ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
                        onPressed: () async {
                          await service.writeFavorites(
                            id: widget.job.id,
                            add: !isFavorite,
                          );
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ApplyJob(url: widget.job.url)),
                          );
                        },
                        child: const Text("Apply Now"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
