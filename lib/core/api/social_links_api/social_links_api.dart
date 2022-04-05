import 'package:dio/dio.dart';
import 'package:pankaz_portfolio/core/models/social_links/social_links.dart';
import 'package:retrofit/http.dart';

part 'social_links_api.g.dart';

@RestApi()
abstract class SocialLinksApi {
  factory SocialLinksApi(Dio dio, {String? baseUrl}) = _SocialLinksApi;

  @GET('')
  Future<SocialLinks> getSocialLinks();
}
