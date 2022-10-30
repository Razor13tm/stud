// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  @HiveField(0)
  Info get info => throw _privateConstructorUsedError;
  @HiveField(1)
  List<Results> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call({@HiveField(0) Info info, @HiveField(1) List<Results> results});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$$_CharacterCopyWith(
          _$_Character value, $Res Function(_$_Character) then) =
      __$$_CharacterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) Info info, @HiveField(1) List<Results> results});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_CharacterCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$_Character>
    implements _$$_CharacterCopyWith<$Res> {
  __$$_CharacterCopyWithImpl(
      _$_Character _value, $Res Function(_$_Character) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_Character(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Character implements _Character {
  const _$_Character(
      {@HiveField(0) required this.info,
      @HiveField(1) required final List<Results> results})
      : _results = results;

  factory _$_Character.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterFromJson(json);

  @override
  @HiveField(0)
  final Info info;
  final List<Results> _results;
  @override
  @HiveField(1)
  List<Results> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Character(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Character &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      __$$_CharacterCopyWithImpl<_$_Character>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {@HiveField(0) required final Info info,
      @HiveField(1) required final List<Results> results}) = _$_Character;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$_Character.fromJson;

  @override
  @HiveField(0)
  Info get info;
  @override
  @HiveField(1)
  List<Results> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @HiveField(0)
  int get count => throw _privateConstructorUsedError;
  @HiveField(1)
  int get pages => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get next => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get prev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call(
      {@HiveField(0) int count,
      @HiveField(1) int pages,
      @HiveField(2) String? next,
      @HiveField(3) String? prev});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$_InfoCopyWith(_$_Info value, $Res Function(_$_Info) then) =
      __$$_InfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int count,
      @HiveField(1) int pages,
      @HiveField(2) String? next,
      @HiveField(3) String? prev});
}

/// @nodoc
class __$$_InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res, _$_Info>
    implements _$$_InfoCopyWith<$Res> {
  __$$_InfoCopyWithImpl(_$_Info _value, $Res Function(_$_Info) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_$_Info(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Info implements _Info {
  const _$_Info(
      {@HiveField(0) required this.count,
      @HiveField(1) required this.pages,
      @HiveField(2) this.next,
      @HiveField(3) this.prev});

  factory _$_Info.fromJson(Map<String, dynamic> json) => _$$_InfoFromJson(json);

  @override
  @HiveField(0)
  final int count;
  @override
  @HiveField(1)
  final int pages;
  @override
  @HiveField(2)
  final String? next;
  @override
  @HiveField(3)
  final String? prev;

  @override
  String toString() {
    return 'Info(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Info &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoCopyWith<_$_Info> get copyWith =>
      __$$_InfoCopyWithImpl<_$_Info>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {@HiveField(0) required final int count,
      @HiveField(1) required final int pages,
      @HiveField(2) final String? next,
      @HiveField(3) final String? prev}) = _$_Info;

  factory _Info.fromJson(Map<String, dynamic> json) = _$_Info.fromJson;

  @override
  @HiveField(0)
  int get count;
  @override
  @HiveField(1)
  int get pages;
  @override
  @HiveField(2)
  String? get next;
  @override
  @HiveField(3)
  String? get prev;
  @override
  @JsonKey(ignore: true)
  _$$_InfoCopyWith<_$_Info> get copyWith => throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get status => throw _privateConstructorUsedError;
  @HiveField(3)
  String get species => throw _privateConstructorUsedError;
  @HiveField(4)
  String get type => throw _privateConstructorUsedError;
  @HiveField(5)
  String get gender => throw _privateConstructorUsedError;
  @HiveField(6)
  String get image => throw _privateConstructorUsedError;
  @HiveField(7)
  List<String> get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String status,
      @HiveField(3) String species,
      @HiveField(4) String type,
      @HiveField(5) String gender,
      @HiveField(6) String image,
      @HiveField(7) List<String> episode});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? image = null,
    Object? episode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$_ResultsCopyWith(
          _$_Results value, $Res Function(_$_Results) then) =
      __$$_ResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String status,
      @HiveField(3) String species,
      @HiveField(4) String type,
      @HiveField(5) String gender,
      @HiveField(6) String image,
      @HiveField(7) List<String> episode});
}

/// @nodoc
class __$$_ResultsCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$_Results>
    implements _$$_ResultsCopyWith<$Res> {
  __$$_ResultsCopyWithImpl(_$_Results _value, $Res Function(_$_Results) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? image = null,
    Object? episode = null,
  }) {
    return _then(_$_Results(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Results implements _Results {
  const _$_Results(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.status,
      @HiveField(3) required this.species,
      @HiveField(4) required this.type,
      @HiveField(5) required this.gender,
      @HiveField(6) required this.image,
      @HiveField(7) required final List<String> episode})
      : _episode = episode;

  factory _$_Results.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String status;
  @override
  @HiveField(3)
  final String species;
  @override
  @HiveField(4)
  final String type;
  @override
  @HiveField(5)
  final String gender;
  @override
  @HiveField(6)
  final String image;
  final List<String> _episode;
  @override
  @HiveField(7)
  List<String> get episode {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  String toString() {
    return 'Results(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, episode: $episode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Results &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, species, type,
      gender, image, const DeepCollectionEquality().hash(_episode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      __$$_ResultsCopyWithImpl<_$_Results>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String status,
      @HiveField(3) required final String species,
      @HiveField(4) required final String type,
      @HiveField(5) required final String gender,
      @HiveField(6) required final String image,
      @HiveField(7) required final List<String> episode}) = _$_Results;

  factory _Results.fromJson(Map<String, dynamic> json) = _$_Results.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get status;
  @override
  @HiveField(3)
  String get species;
  @override
  @HiveField(4)
  String get type;
  @override
  @HiveField(5)
  String get gender;
  @override
  @HiveField(6)
  String get image;
  @override
  @HiveField(7)
  List<String> get episode;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      throw _privateConstructorUsedError;
}
