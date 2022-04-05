import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_links.g.dart';
part 'social_links.freezed.dart';

@freezed
class SocialLinks with _$SocialLinks {
  factory SocialLinks({String? facebook, String? instagram, String? youtube}) =
      _SocialLinks;

  factory SocialLinks.fromJson(Map<String, dynamic> json) =>
      _$SocialLinksFromJson(json);
}
