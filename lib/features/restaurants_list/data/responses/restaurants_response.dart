import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurants_response.freezed.dart';
part 'restaurants_response.g.dart';

@freezed
class RestaurantsResponse with _$RestaurantsResponse {
  const factory RestaurantsResponse({
    String? id,
    Address? address,
    Menu? menu,
    String? logo,
    String? logoUrl,
    String? photo,
    String? photoUrl,
    String? heroPhotoUrl,
    String? locationMapUrl,
    int? hygineRating,
    String? rating,
    int? affordability,
    bool? hasReservation,
    bool? hasOrder,
    String? commissionRate,
    int? baseDeliveryFee,
    int? extraDeliveryFee,
    int? adminFee,
    String? averageDiningTime,
    int? maxPeoplePerReservation,
    int? reservationTimeInterval,
    int? minOrderPrice,
    bool? hasDelivery,
    bool? hasCollection,
    String? slug,
    String? name,
    String? phoneNumber,
    String? email,
    String? description,
    Hours? hours,
    String? stripeAccountId,
    bool? isActive,
    int? branding,
    int? manager,
    List<int>? tags,
  }) = _RestaurantsResponse;

  factory RestaurantsResponse.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsResponseFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    int? id,
    String? line1,
    String? line2,
    String? city,
    String? postcode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class Hours with _$Hours {
  const factory Hours({
    Day? friday,
    Day? monday,
    Day? sunday,
    Day? tuesday,
    Day? saturday,
    Day? thursday,
    Day? wednesday,
  }) = _Hours;

  factory Hours.fromJson(Map<String, dynamic> json) => _$HoursFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    String? closing,
    String? opening,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Menu with _$Menu {
  const factory Menu({
    int? id,
    List<Item>? items,
    String? name,
    String? description,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    int? id,
    List<Option>? options,
    Category? category,
    String? name,
    String? description,
    int? price,
    dynamic image,
    String? photoUrl,
    dynamic calories,
    int? spicyLevel,
    int? order,
    bool? isAvailable,
    bool? isPopular,
    int? menu,
    List<dynamic>? diataries,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    String? name,
    String? description,
    int? order,
    dynamic menu,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Option with _$Option {
  const factory Option({
    int? id,
    String? name,
    String? displayName,
    int? price,
    String? description,
    bool? required,
    String? type,
    int? selectionLimit,
    int? order,
    bool? isActive,
    dynamic menu,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
