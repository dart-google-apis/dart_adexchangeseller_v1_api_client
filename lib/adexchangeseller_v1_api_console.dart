library adexchangeseller_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_adexchangeseller_v1_api/src/cloud_api_console.dart';

import "package:google_adexchangeseller_v1_api/adexchangeseller_v1_api_client.dart";

/** Gives Ad Exchange seller users access to their inventory and the ability to generate reports */
class Adexchangeseller extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your Ad Exchange data */
  static const String ADEXCHANGE_SELLER_SCOPE = "https://www.googleapis.com/auth/adexchange.seller";

  /** OAuth Scope2: View your Ad Exchange data */
  static const String ADEXCHANGE_SELLER_READONLY_SCOPE = "https://www.googleapis.com/auth/adexchange.seller.readonly";

  final oauth2.OAuth2Console auth;

  Adexchangeseller([oauth2.OAuth2Console this.auth]);
}
