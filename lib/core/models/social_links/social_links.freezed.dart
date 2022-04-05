// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialLinks _$SocialLinksFromJson(Map<String, dynamic> json) {
  return _SocialLinks.fromJson(json);
}

/// @nodoc
class _$SocialLinksTearOff {
  const _$SocialLinksTearOff();

  _SocialLinks call({String? facebook, String? instagram, String? youtube}) {
    return _SocialLinks(
      facebook: facebook,
      instagram: instagram,
      youtube: youtube,
    );
  }

  SocialLinks fromJson(Map<String, Object?> json) {
    return SocialLinks.fromJson(json);
  }
}

/// @nodoc
const $SocialLinks = _$SocialLinksTearOff();

/// @nodoc
mixin _$SocialLinks {
  String? get facebook => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get youtube => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialLinksCopyWith<SocialLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLinksCopyWith<$Res> {
  factory $SocialLinksCopyWith(
          SocialLinks value, $Res Function(SocialLinks) then) =
      _$SocialLinksCopyWithImpl<$Res>;
  $Res call({String? facebook, String? instagram, String? youtube});
}

/// @nodoc
class _$SocialLinksCopyWithImpl<$Res> implements $SocialLinksCopyWith<$Res> {
  _$SocialLinksCopyWithImpl(this._value, this._then);

  final SocialLinks _value;
  // ignore: unused_field
  final $Res Function(SocialLinks) _then;

  @override
  $Res call({
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? youtube = freezed,
  }) {
    return _then(_value.copyWith(
      facebook: facebook == freezed
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SocialLinksCopyWith<$Res>
    implements $SocialLinksCopyWith<$Res> {
  factory _$SocialLinksCopyWith(
          _SocialLinks value, $Res Function(_SocialLinks) then) =
      __$SocialLinksCopyWithImpl<$Res>;
  @override
  $Res call({String? facebook, String? instagram, String? youtube});
}

/// @nodoc
class __$SocialLinksCopyWithImpl<$Res> extends _$SocialLinksCopyWithImpl<$Res>
    implements _$SocialLinksCopyWith<$Res> {
  __$SocialLinksCopyWithImpl(
      _SocialLinks _value, $Res Function(_SocialLinks) _then)
      : super(_value, (v) => _then(v as _SocialLinks));

  @override
  _SocialLinks get _value => super._value as _SocialLinks;

  @override
  $Res call({
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? youtube = freezed,
  }) {
    return _then(_SocialLinks(
      facebook: facebook == freezed
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialLinks implements _SocialLinks {
  _$_SocialLinks({this.facebook, this.instagram, this.youtube});

  factory _$_SocialLinks.fromJson(Map<String, dynamic> json) =>
      _$$_SocialLinksFromJson(json);

  @override
  final String? facebook;
  @override
  final String? instagram;
  @override
  final String? youtube;

  @override
  String toString() {
    return 'SocialLinks(facebook: $facebook, instagram: $instagram, youtube: $youtube)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialLinks &&
            const DeepCollectionEquality().equals(other.facebook, facebook) &&
            const DeepCollectionEquality().equals(other.instagram, instagram) &&
            const DeepCollectionEquality().equals(other.youtube, youtube));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(facebook),
      const DeepCollectionEquality().hash(instagram),
      const DeepCollectionEquality().hash(youtube));

  @JsonKey(ignore: true)
  @override
  _$SocialLinksCopyWith<_SocialLinks> get copyWith =>
      __$SocialLinksCopyWithImpl<_SocialLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialLinksToJson(this);
  }
}

abstract class _SocialLinks implements SocialLinks {
  factory _SocialLinks({String? facebook, String? instagram, String? youtube}) =
      _$_SocialLinks;

  factory _SocialLinks.fromJson(Map<String, dynamic> json) =
      _$_SocialLinks.fromJson;

  @override
  String? get facebook;
  @override
  String? get instagram;
  @override
  String? get youtube;
  @override
  @JsonKey(ignore: true)
  _$SocialLinksCopyWith<_SocialLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
