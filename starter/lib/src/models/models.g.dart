// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favorite _$$_FavoriteFromJson(Map<String, dynamic> json) => _$_Favorite(
      position: json['position'] as String,
      company: json['company'] as String,
      status: json['status'] as String,
      price: json['price'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$_FavoriteToJson(_$_Favorite instance) =>
    <String, dynamic>{
      'position': instance.position,
      'company': instance.company,
      'status': instance.status,
      'price': instance.price,
      'logo': instance.logo,
    };

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['id'] as String,
      url: json['url'] as String,
      title: json['title'] as String,
      company: json['company'] as String,
      logo: json['logo'] as String,
      category: json['category'] as String,
      type: json['type'] as String,
      publication: json['publication'] as String,
      location: json['location'] as String,
      salary: json['salary'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'company': instance.company,
      'logo': instance.logo,
      'category': instance.category,
      'type': instance.type,
      'publication': instance.publication,
      'location': instance.location,
      'salary': instance.salary,
      'description': instance.description,
    };
