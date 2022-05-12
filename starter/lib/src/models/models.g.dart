// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobResponse _$$_JobResponseFromJson(Map<String, dynamic> json) =>
    _$_JobResponse(
      jobCount: json['job-count'] as int,
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JobResponseToJson(_$_JobResponse instance) =>
    <String, dynamic>{
      'job-count': instance.jobCount,
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    };

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['id'] as int,
      url: json['url'] as String,
      title: json['title'] as String,
      company: json['company_name'] as String,
      logo: json['company_logo'] as String,
      category: json['category'] as String,
      type: json['job_type'] as String,
      publication: json['publication_date'] as String,
      location: json['candidate_required_location'] as String,
      salary: json['salary'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'company_name': instance.company,
      'company_logo': instance.logo,
      'category': instance.category,
      'job_type': instance.type,
      'publication_date': instance.publication,
      'candidate_required_location': instance.location,
      'salary': instance.salary,
      'description': instance.description,
    };
