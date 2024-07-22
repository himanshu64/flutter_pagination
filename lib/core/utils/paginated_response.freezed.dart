// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedResponse {
  List<UserModel> get results => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedResponseCopyWith<PaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<$Res> {
  factory $PaginatedResponseCopyWith(
          PaginatedResponse value, $Res Function(PaginatedResponse) then) =
      _$PaginatedResponseCopyWithImpl<$Res, PaginatedResponse>;
  @useResult
  $Res call(
      {List<UserModel> results,
      int totalResults,
      int limit,
      int page,
      int totalPages});
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<$Res, $Val extends PaginatedResponse>
    implements $PaginatedResponseCopyWith<$Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalResults = null,
    Object? limit = null,
    Object? page = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedResponseImplCopyWith<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  factory _$$PaginatedResponseImplCopyWith(_$PaginatedResponseImpl value,
          $Res Function(_$PaginatedResponseImpl) then) =
      __$$PaginatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserModel> results,
      int totalResults,
      int limit,
      int page,
      int totalPages});
}

/// @nodoc
class __$$PaginatedResponseImplCopyWithImpl<$Res>
    extends _$PaginatedResponseCopyWithImpl<$Res, _$PaginatedResponseImpl>
    implements _$$PaginatedResponseImplCopyWith<$Res> {
  __$$PaginatedResponseImplCopyWithImpl(_$PaginatedResponseImpl _value,
      $Res Function(_$PaginatedResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalResults = null,
    Object? limit = null,
    Object? page = null,
    Object? totalPages = null,
  }) {
    return _then(_$PaginatedResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginatedResponseImpl implements _PaginatedResponse {
  const _$PaginatedResponseImpl(
      {final List<UserModel> results = const [],
      required this.totalResults,
      required this.limit,
      required this.page,
      required this.totalPages})
      : _results = results;

  final List<UserModel> _results;
  @override
  @JsonKey()
  List<UserModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int totalResults;
  @override
  final int limit;
  @override
  final int page;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'PaginatedResponse(results: $results, totalResults: $totalResults, limit: $limit, page: $page, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      totalResults,
      limit,
      page,
      totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedResponseImplCopyWith<_$PaginatedResponseImpl> get copyWith =>
      __$$PaginatedResponseImplCopyWithImpl<_$PaginatedResponseImpl>(
          this, _$identity);
}

abstract class _PaginatedResponse implements PaginatedResponse {
  const factory _PaginatedResponse(
      {final List<UserModel> results,
      required final int totalResults,
      required final int limit,
      required final int page,
      required final int totalPages}) = _$PaginatedResponseImpl;

  @override
  List<UserModel> get results;
  @override
  int get totalResults;
  @override
  int get limit;
  @override
  int get page;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResponseImplCopyWith<_$PaginatedResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
