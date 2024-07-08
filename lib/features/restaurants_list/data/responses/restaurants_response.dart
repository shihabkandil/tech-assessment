import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurants_response.freezed.dart';
part 'restaurants_response.g.dart';

@freezed
class RestaurantResponse with _$RestaurantResponse {
  const factory RestaurantResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "address") ResponseAddress? address,
    @JsonKey(name: "menu") ResponseMenu? menu,
    @JsonKey(name: "logo") String? logo,
    @JsonKey(name: "logo_url") String? logoUrl,
    @JsonKey(name: "photo") String? photo,
    @JsonKey(name: "photo_url") String? photoUrl,
    @JsonKey(name: "hero_photo_url") String? heroPhotoUrl,
    @JsonKey(name: "location_map_url") String? locationMapUrl,
    @JsonKey(name: "hygine_rating") int? hygineRating,
    @JsonKey(name: "rating") String? rating,
    @JsonKey(name: "affordability") int? affordability,
    @JsonKey(name: "has_reservation") bool? hasReservation,
    @JsonKey(name: "has_order") bool? hasOrder,
    @JsonKey(name: "commission_rate") String? commissionRate,
    @JsonKey(name: "base_delivery_fee") int? baseDeliveryFee,
    @JsonKey(name: "extra_delivery_fee") int? extraDeliveryFee,
    @JsonKey(name: "admin_fee") int? adminFee,
    @JsonKey(name: "average_dining_time") String? averageDiningTime,
    @JsonKey(name: "max_people_per_reservation") int? maxPeoplePerReservation,
    @JsonKey(name: "reservation_time_interval") int? reservationTimeInterval,
    @JsonKey(name: "min_order_price") int? minOrderPrice,
    @JsonKey(name: "has_delivery") bool? hasDelivery,
    @JsonKey(name: "has_collection") bool? hasCollection,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone_number") String? phoneNumber,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "hours") ResponseHours? hours,
    @JsonKey(name: "stripe_account_id") String? stripeAccountId,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "branding") int? branding,
    @JsonKey(name: "manager") int? manager,
    @JsonKey(name: "tags") List<int?>? tags,
  }) = _RestaurantResponse;

  factory RestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$RestaurantResponseFromJson(json);
}

@freezed
class ResponseAddress with _$ResponseAddress {
  const factory ResponseAddress({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "line1") String? line1,
    @JsonKey(name: "line2") String? line2,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "postcode") String? postcode,
  }) = _ResponseAddress;

  factory ResponseAddress.fromJson(Map<String, dynamic> json) =>
      _$ResponseAddressFromJson(json);
}

@freezed
class ResponseHours with _$ResponseHours {
  const factory ResponseHours({
    @JsonKey(name: "friday") ResponseDay? friday,
    @JsonKey(name: "monday") ResponseDay? monday,
    @JsonKey(name: "sunday") ResponseDay? sunday,
    @JsonKey(name: "tuesday") ResponseDay? tuesday,
    @JsonKey(name: "saturday") ResponseDay? saturday,
    @JsonKey(name: "thursday") ResponseDay? thursday,
    @JsonKey(name: "wednesday") ResponseDay? wednesday,
  }) = _ResponseHours;

  factory ResponseHours.fromJson(Map<String, dynamic> json) =>
      _$ResponseHoursFromJson(json);
}

@freezed
class ResponseDay with _$ResponseDay {
  const factory ResponseDay({
    @JsonKey(name: "closing") String? closing,
    @JsonKey(name: "opening") String? opening,
  }) = _ResponseDay;

  factory ResponseDay.fromJson(Map<String, dynamic> json) =>
      _$ResponseDayFromJson(json);
}

@freezed
class ResponseMenu with _$ResponseMenu {
  const factory ResponseMenu({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "items") List<ResponseItem>? items,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
  }) = _ResponseMenu;

  factory ResponseMenu.fromJson(Map<String, dynamic> json) =>
      _$ResponseMenuFromJson(json);
}

@freezed
class ResponseItem with _$ResponseItem {
  const factory ResponseItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "options") List<ResponseOption>? options,
    @JsonKey(name: "category") ResponseCategory? category,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "image") dynamic image,
    @JsonKey(name: "photo_url") String? photoUrl,
    @JsonKey(name: "calories") dynamic calories,
    @JsonKey(name: "spicy_level") int? spicyLevel,
    @JsonKey(name: "order") int? order,
    @JsonKey(name: "is_available") bool? isAvailable,
    @JsonKey(name: "is_popular") bool? isPopular,
    @JsonKey(name: "menu") int? menu,
    @JsonKey(name: "diataries") List<dynamic>? diataries,
  }) = _ResponseItem;

  factory ResponseItem.fromJson(Map<String, dynamic> json) =>
      _$ResponseItemFromJson(json);
}

@freezed
class ResponseCategory with _$ResponseCategory {
  const factory ResponseCategory({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "order") int? order,
    @JsonKey(name: "menu") dynamic menu,
  }) = _ResponseCategory;

  factory ResponseCategory.fromJson(Map<String, dynamic> json) =>
      _$ResponseCategoryFromJson(json);
}

@freezed
class ResponseOption with _$ResponseOption {
  const factory ResponseOption({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "display_name") String? displayName,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "required") bool? required,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "selection_limit") int? selectionLimit,
    @JsonKey(name: "order") int? order,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "menu") dynamic menu,
  }) = _ResponseOption;

  factory ResponseOption.fromJson(Map<String, dynamic> json) =>
      _$ResponseOptionFromJson(json);
}
