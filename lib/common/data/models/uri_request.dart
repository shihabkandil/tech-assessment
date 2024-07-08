import 'package:freezed_annotation/freezed_annotation.dart';

part 'uri_request.freezed.dart';

@freezed
class UriRequest with _$UriRequest {
  const factory UriRequest({
    required Uri uri,
    Object? body,
  }) = _UriRequest;
}
