library adexchangeseller_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_adexchangeseller_v1_api/src/browser_client.dart';
import "package:google_adexchangeseller_v1_api/adexchangeseller_v1_api_client.dart";

/** Gives Ad Exchange seller users access to their inventory and the ability to generate reports */
@deprecated
class Adexchangeseller extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your Ad Exchange data */
  static const String ADEXCHANGE_SELLER_SCOPE = "https://www.googleapis.com/auth/adexchange.seller";

  /** OAuth Scope2: View your Ad Exchange data */
  static const String ADEXCHANGE_SELLER_READONLY_SCOPE = "https://www.googleapis.com/auth/adexchange.seller.readonly";

  final oauth.OAuth2 auth;

  Adexchangeseller([oauth.OAuth2 this.auth]);
}
