// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobResponse _$JobResponseFromJson(Map<String, dynamic> json) {
  return _JobResponse.fromJson(json);
}

/// @nodoc
class _$JobResponseTearOff {
  const _$JobResponseTearOff();

  _JobResponse call(
      {@JsonKey(name: 'job-count') required int jobCount,
      required List<Job> jobs}) {
    return _JobResponse(
      jobCount: jobCount,
      jobs: jobs,
    );
  }

  JobResponse fromJson(Map<String, Object?> json) {
    return JobResponse.fromJson(json);
  }
}

/// @nodoc
const $JobResponse = _$JobResponseTearOff();

/// @nodoc
mixin _$JobResponse {
  @JsonKey(name: 'job-count')
  int get jobCount => throw _privateConstructorUsedError;
  List<Job> get jobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobResponseCopyWith<JobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobResponseCopyWith<$Res> {
  factory $JobResponseCopyWith(
          JobResponse value, $Res Function(JobResponse) then) =
      _$JobResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'job-count') int jobCount, List<Job> jobs});
}

/// @nodoc
class _$JobResponseCopyWithImpl<$Res> implements $JobResponseCopyWith<$Res> {
  _$JobResponseCopyWithImpl(this._value, this._then);

  final JobResponse _value;
  // ignore: unused_field
  final $Res Function(JobResponse) _then;

  @override
  $Res call({
    Object? jobCount = freezed,
    Object? jobs = freezed,
  }) {
    return _then(_value.copyWith(
      jobCount: jobCount == freezed
          ? _value.jobCount
          : jobCount // ignore: cast_nullable_to_non_nullable
              as int,
      jobs: jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc
abstract class _$JobResponseCopyWith<$Res>
    implements $JobResponseCopyWith<$Res> {
  factory _$JobResponseCopyWith(
          _JobResponse value, $Res Function(_JobResponse) then) =
      __$JobResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'job-count') int jobCount, List<Job> jobs});
}

/// @nodoc
class __$JobResponseCopyWithImpl<$Res> extends _$JobResponseCopyWithImpl<$Res>
    implements _$JobResponseCopyWith<$Res> {
  __$JobResponseCopyWithImpl(
      _JobResponse _value, $Res Function(_JobResponse) _then)
      : super(_value, (v) => _then(v as _JobResponse));

  @override
  _JobResponse get _value => super._value as _JobResponse;

  @override
  $Res call({
    Object? jobCount = freezed,
    Object? jobs = freezed,
  }) {
    return _then(_JobResponse(
      jobCount: jobCount == freezed
          ? _value.jobCount
          : jobCount // ignore: cast_nullable_to_non_nullable
              as int,
      jobs: jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_JobResponse implements _JobResponse {
  _$_JobResponse(
      {@JsonKey(name: 'job-count') required this.jobCount, required this.jobs});

  factory _$_JobResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JobResponseFromJson(json);

  @override
  @JsonKey(name: 'job-count')
  final int jobCount;
  @override
  final List<Job> jobs;

  @override
  String toString() {
    return 'JobResponse(jobCount: $jobCount, jobs: $jobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobResponse &&
            const DeepCollectionEquality().equals(other.jobCount, jobCount) &&
            const DeepCollectionEquality().equals(other.jobs, jobs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jobCount),
      const DeepCollectionEquality().hash(jobs));

  @JsonKey(ignore: true)
  @override
  _$JobResponseCopyWith<_JobResponse> get copyWith =>
      __$JobResponseCopyWithImpl<_JobResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobResponseToJson(this);
  }
}

abstract class _JobResponse implements JobResponse {
  factory _JobResponse(
      {@JsonKey(name: 'job-count') required int jobCount,
      required List<Job> jobs}) = _$_JobResponse;

  factory _JobResponse.fromJson(Map<String, dynamic> json) =
      _$_JobResponse.fromJson;

  @override
  @JsonKey(name: 'job-count')
  int get jobCount;
  @override
  List<Job> get jobs;
  @override
  @JsonKey(ignore: true)
  _$JobResponseCopyWith<_JobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
class _$JobTearOff {
  const _$JobTearOff();

  _Job call(
      {required int id,
      required String url,
      required String title,
      @JsonKey(name: 'company_name') required String company,
      @JsonKey(name: 'company_logo') required String logo,
      required String category,
      @JsonKey(name: 'job_type') required String type,
      @JsonKey(name: 'publication_date') required String publication,
      @JsonKey(name: 'candidate_required_location') required String location,
      required String salary,
      required String description}) {
    return _Job(
      id: id,
      url: url,
      title: title,
      company: company,
      logo: logo,
      category: category,
      type: type,
      publication: publication,
      location: location,
      salary: salary,
      description: description,
    );
  }

  Job fromJson(Map<String, Object?> json) {
    return Job.fromJson(json);
  }
}

/// @nodoc
const $Job = _$JobTearOff();

/// @nodoc
mixin _$Job {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_logo')
  String get logo => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'publication_date')
  String get publication => throw _privateConstructorUsedError;
  @JsonKey(name: 'candidate_required_location')
  String get location => throw _privateConstructorUsedError;
  String get salary => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String url,
      String title,
      @JsonKey(name: 'company_name') String company,
      @JsonKey(name: 'company_logo') String logo,
      String category,
      @JsonKey(name: 'job_type') String type,
      @JsonKey(name: 'publication_date') String publication,
      @JsonKey(name: 'candidate_required_location') String location,
      String salary,
      String description});
}

/// @nodoc
class _$JobCopyWithImpl<$Res> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  final Job _value;
  // ignore: unused_field
  final $Res Function(Job) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? company = freezed,
    Object? logo = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? publication = freezed,
    Object? location = freezed,
    Object? salary = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      publication: publication == freezed
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      salary: salary == freezed
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$JobCopyWith(_Job value, $Res Function(_Job) then) =
      __$JobCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String url,
      String title,
      @JsonKey(name: 'company_name') String company,
      @JsonKey(name: 'company_logo') String logo,
      String category,
      @JsonKey(name: 'job_type') String type,
      @JsonKey(name: 'publication_date') String publication,
      @JsonKey(name: 'candidate_required_location') String location,
      String salary,
      String description});
}

/// @nodoc
class __$JobCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res>
    implements _$JobCopyWith<$Res> {
  __$JobCopyWithImpl(_Job _value, $Res Function(_Job) _then)
      : super(_value, (v) => _then(v as _Job));

  @override
  _Job get _value => super._value as _Job;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? company = freezed,
    Object? logo = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? publication = freezed,
    Object? location = freezed,
    Object? salary = freezed,
    Object? description = freezed,
  }) {
    return _then(_Job(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      publication: publication == freezed
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      salary: salary == freezed
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Job implements _Job {
  const _$_Job(
      {required this.id,
      required this.url,
      required this.title,
      @JsonKey(name: 'company_name') required this.company,
      @JsonKey(name: 'company_logo') required this.logo,
      required this.category,
      @JsonKey(name: 'job_type') required this.type,
      @JsonKey(name: 'publication_date') required this.publication,
      @JsonKey(name: 'candidate_required_location') required this.location,
      required this.salary,
      required this.description});

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String title;
  @override
  @JsonKey(name: 'company_name')
  final String company;
  @override
  @JsonKey(name: 'company_logo')
  final String logo;
  @override
  final String category;
  @override
  @JsonKey(name: 'job_type')
  final String type;
  @override
  @JsonKey(name: 'publication_date')
  final String publication;
  @override
  @JsonKey(name: 'candidate_required_location')
  final String location;
  @override
  final String salary;
  @override
  final String description;

  @override
  String toString() {
    return 'Job(id: $id, url: $url, title: $title, company: $company, logo: $logo, category: $category, type: $type, publication: $publication, location: $location, salary: $salary, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Job &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.publication, publication) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.salary, salary) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(publication),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(salary),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$JobCopyWith<_Job> get copyWith =>
      __$JobCopyWithImpl<_Job>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobToJson(this);
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {required int id,
      required String url,
      required String title,
      @JsonKey(name: 'company_name') required String company,
      @JsonKey(name: 'company_logo') required String logo,
      required String category,
      @JsonKey(name: 'job_type') required String type,
      @JsonKey(name: 'publication_date') required String publication,
      @JsonKey(name: 'candidate_required_location') required String location,
      required String salary,
      required String description}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get title;
  @override
  @JsonKey(name: 'company_name')
  String get company;
  @override
  @JsonKey(name: 'company_logo')
  String get logo;
  @override
  String get category;
  @override
  @JsonKey(name: 'job_type')
  String get type;
  @override
  @JsonKey(name: 'publication_date')
  String get publication;
  @override
  @JsonKey(name: 'candidate_required_location')
  String get location;
  @override
  String get salary;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$JobCopyWith<_Job> get copyWith => throw _privateConstructorUsedError;
}
