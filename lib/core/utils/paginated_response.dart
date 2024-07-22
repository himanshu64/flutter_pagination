
import 'package:flutter_healtcare/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories:true, explicitToJson: true,)
class PaginatedResponse with _$PaginatedResponse {
   const factory PaginatedResponse({
    @Default([]) List<UserModel> results,
    required int totalResults,
    required int limit,
    required int page,
    required int totalPages,
  }) = _PaginatedResponse;

   factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,

    
  ) => _$PaginatedResponseFromJson(json);



  
}

// T Function(Object? json) fromJsonT, fromJsonT
