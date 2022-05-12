import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

const Map<int, String?> categoryName = {
  0: "Software Development",
  1: "DevOps",
  2: "Product",
  3: "Design",
  4: "Marketing",
};

const Map<int, String> navigationItems = {
  0: "Jobs",
  1: "Favorites",
};

@freezed
class JobResponse with _$JobResponse {
  @JsonSerializable(explicitToJson: true)
  factory JobResponse({
    @JsonKey(name: 'job-count') required int jobCount,
    required List<Job> jobs,
  }) = _JobResponse;

  factory JobResponse.fromJson(Map<String, Object?> json) => _$JobResponseFromJson(json);
}

@freezed
class Job with _$Job {
  const factory Job({
    required int id,
    required String url,
    required String title,
    @JsonKey(name: 'company_name') required String company,
    @JsonKey(name: 'company_logo') required String logo,
    required String category,
    @JsonKey(name: 'job_type') required String type,
    @JsonKey(name: 'publication_date') required String publication,
    @JsonKey(name: 'candidate_required_location') required String location,
    required String salary,
    required String description,
  }) = _Job;

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}

List<Job> getJobs() {
  return <Job>[];
}

List<String> getJobsRequirements() {
  return <String>[
    "Exceptional communication skills and team-working skills",
    "Know the principles of animation and you can create high fidelity prototypes",
    "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
    "Good UI/UX knowledge",
  ];
}
