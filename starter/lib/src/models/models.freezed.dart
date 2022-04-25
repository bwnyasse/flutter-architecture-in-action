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

Favorite _$FavoriteFromJson(Map<String, dynamic> json) {
  return _Favorite.fromJson(json);
}

/// @nodoc
class _$FavoriteTearOff {
  const _$FavoriteTearOff();

  _Favorite call(
      {required String position,
      required String company,
      required String status,
      required String price,
      required String logo}) {
    return _Favorite(
      position: position,
      company: company,
      status: status,
      price: price,
      logo: logo,
    );
  }

  Favorite fromJson(Map<String, Object?> json) {
    return Favorite.fromJson(json);
  }
}

/// @nodoc
const $Favorite = _$FavoriteTearOff();

/// @nodoc
mixin _$Favorite {
  String get position => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteCopyWith<Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res>;
  $Res call(
      {String position,
      String company,
      String status,
      String price,
      String logo});
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res> implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

  final Favorite _value;
  // ignore: unused_field
  final $Res Function(Favorite) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? company = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FavoriteCopyWith<$Res> implements $FavoriteCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) then) =
      __$FavoriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String position,
      String company,
      String status,
      String price,
      String logo});
}

/// @nodoc
class __$FavoriteCopyWithImpl<$Res> extends _$FavoriteCopyWithImpl<$Res>
    implements _$FavoriteCopyWith<$Res> {
  __$FavoriteCopyWithImpl(_Favorite _value, $Res Function(_Favorite) _then)
      : super(_value, (v) => _then(v as _Favorite));

  @override
  _Favorite get _value => super._value as _Favorite;

  @override
  $Res call({
    Object? position = freezed,
    Object? company = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? logo = freezed,
  }) {
    return _then(_Favorite(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Favorite implements _Favorite {
  const _$_Favorite(
      {required this.position,
      required this.company,
      required this.status,
      required this.price,
      required this.logo});

  factory _$_Favorite.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteFromJson(json);

  @override
  final String position;
  @override
  final String company;
  @override
  final String status;
  @override
  final String price;
  @override
  final String logo;

  @override
  String toString() {
    return 'Favorite(position: $position, company: $company, status: $status, price: $price, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Favorite &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.logo, logo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(logo));

  @JsonKey(ignore: true)
  @override
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      __$FavoriteCopyWithImpl<_Favorite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteToJson(this);
  }
}

abstract class _Favorite implements Favorite {
  const factory _Favorite(
      {required String position,
      required String company,
      required String status,
      required String price,
      required String logo}) = _$_Favorite;

  factory _Favorite.fromJson(Map<String, dynamic> json) = _$_Favorite.fromJson;

  @override
  String get position;
  @override
  String get company;
  @override
  String get status;
  @override
  String get price;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$FavoriteCopyWith<_Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
class _$JobTearOff {
  const _$JobTearOff();

  _Job call(
      {required String id,
      required String url,
      required String title,
      required String company,
      required String logo,
      required String category,
      required String type,
      required String publication,
      required String location,
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
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get publication => throw _privateConstructorUsedError;
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
      {String id,
      String url,
      String title,
      String company,
      String logo,
      String category,
      String type,
      String publication,
      String location,
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
              as String,
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
      {String id,
      String url,
      String title,
      String company,
      String logo,
      String category,
      String type,
      String publication,
      String location,
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
              as String,
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
      required this.company,
      required this.logo,
      required this.category,
      required this.type,
      required this.publication,
      required this.location,
      required this.salary,
      required this.description});

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final String title;
  @override
  final String company;
  @override
  final String logo;
  @override
  final String category;
  @override
  final String type;
  @override
  final String publication;
  @override
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
      {required String id,
      required String url,
      required String title,
      required String company,
      required String logo,
      required String category,
      required String type,
      required String publication,
      required String location,
      required String salary,
      required String description}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  String get title;
  @override
  String get company;
  @override
  String get logo;
  @override
  String get category;
  @override
  String get type;
  @override
  String get publication;
  @override
  String get location;
  @override
  String get salary;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$JobCopyWith<_Job> get copyWith => throw _privateConstructorUsedError;
}
