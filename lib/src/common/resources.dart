part of adexchangeseller_v1_api_client;

class AdclientsResource extends Resource {

  AdclientsResource(Client client) : super(client) {
  }

  /**
   * List all ad clients in this Ad Exchange account.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdClients> list({int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdClients.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AdunitsResource extends Resource {

  AdunitsCustomchannelsResource _customchannels;
  AdunitsCustomchannelsResource get customchannels => _customchannels;

  AdunitsResource(Client client) : super(client) {
  _customchannels = new AdunitsCustomchannelsResource(client);
  }

  /**
   * Gets the specified ad unit in the specified ad client.
   *
   * [adClientId] - Ad client for which to get the ad unit.
   *
   * [adUnitId] - Ad unit to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnit> get(String adClientId, String adUnitId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/adunits/{adUnitId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all ad units in the specified ad client for this Ad Exchange account.
   *
   * [adClientId] - Ad client for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnits> list(String adClientId, {bool includeInactive, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/adunits";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnits.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AdunitsCustomchannelsResource extends Resource {

  AdunitsCustomchannelsResource(Client client) : super(client) {
  }

  /**
   * List all custom channels which the specified ad unit belongs to.
   *
   * [adClientId] - Ad client which contains the ad unit.
   *
   * [adUnitId] - Ad unit for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannels> list(String adClientId, String adUnitId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/adunits/{adUnitId}/customchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CustomchannelsResource extends Resource {

  CustomchannelsAdunitsResource _adunits;
  CustomchannelsAdunitsResource get adunits => _adunits;

  CustomchannelsResource(Client client) : super(client) {
  _adunits = new CustomchannelsAdunitsResource(client);
  }

  /**
   * Get the specified custom channel from the specified ad client.
   *
   * [adClientId] - Ad client which contains the custom channel.
   *
   * [customChannelId] - Custom channel to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannel> get(String adClientId, String customChannelId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all custom channels in the specified ad client for this Ad Exchange account.
   *
   * [adClientId] - Ad client for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannels> list(String adClientId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CustomchannelsAdunitsResource extends Resource {

  CustomchannelsAdunitsResource(Client client) : super(client) {
  }

  /**
   * List all ad units in the specified custom channel.
   *
   * [adClientId] - Ad client which contains the custom channel.
   *
   * [customChannelId] - Custom channel for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnits> list(String adClientId, String customChannelId, {bool includeInactive, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels/{customChannelId}/adunits";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnits.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsResource extends Resource {

  ReportsSavedResource _saved;
  ReportsSavedResource get saved => _saved;

  ReportsResource(Client client) : super(client) {
  _saved = new ReportsSavedResource(client);
  }

  /**
   * Generate an Ad Exchange report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [dimension] - Dimensions to base the report on.
   *
   * [filter] - Filters to be run on the report.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> generate(String startDate, String endDate, {String dimension, String filter, String locale, int maxResults, String metric, String sort, int startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "reports";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsSavedResource extends Resource {

  ReportsSavedResource(Client client) : super(client) {
  }

  /**
   * Generate an Ad Exchange report based on the saved report ID sent in the query parameters.
   *
   * [savedReportId] - The saved report to retrieve.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> generate(String savedReportId, {String locale, int maxResults, int startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "reports/{savedReportId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (savedReportId == null) paramErrors.add("savedReportId is required");
    if (savedReportId != null) urlParams["savedReportId"] = savedReportId;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all saved reports in this Ad Exchange account.
   *
   * [maxResults] - The maximum number of saved reports to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - A continuation token, used to page through saved reports. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<SavedReports> list({int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "reports/saved";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SavedReports.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UrlchannelsResource extends Resource {

  UrlchannelsResource(Client client) : super(client) {
  }

  /**
   * List all URL channels in the specified ad client for this Ad Exchange account.
   *
   * [adClientId] - Ad client for which to list URL channels.
   *
   * [maxResults] - The maximum number of URL channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<UrlChannels> list(String adClientId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/urlchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UrlChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

