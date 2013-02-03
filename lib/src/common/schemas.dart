part of adexchangeseller_v1_api_client;

class AdClient {

  /** Whether this ad client is opted in to ARC. */
  bool arcOptIn;

  /** Unique identifier of this ad client. */
  String id;

  /** Kind of resource this is, in this case adexchangeseller#adClient. */
  String kind;

  /** This ad client's product code, which corresponds to the PRODUCT_CODE report dimension. */
  String productCode;

  /** Whether this ad client supports being reported on. */
  bool supportsReporting;

  /** Create new AdClient from JSON data */
  AdClient.fromJson(Map json) {
    if (json.containsKey("arcOptIn")) {
      arcOptIn = json["arcOptIn"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCode")) {
      productCode = json["productCode"];
    }
    if (json.containsKey("supportsReporting")) {
      supportsReporting = json["supportsReporting"];
    }
  }

  /** Create JSON Object for AdClient */
  Map toJson() {
    var output = new Map();

    if (arcOptIn != null) {
      output["arcOptIn"] = arcOptIn;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCode != null) {
      output["productCode"] = productCode;
    }
    if (supportsReporting != null) {
      output["supportsReporting"] = supportsReporting;
    }

    return output;
  }

  /** Return String representation of AdClient */
  String toString() => JSON.stringify(this.toJson());

}

class AdClients {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ad clients returned in this list response. */
  List<AdClient> items;

  /** Kind of list this is, in this case adexchangeseller#adClients. */
  String kind;

  /** Continuation token used to page through ad clients. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new AdClients from JSON data */
  AdClients.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AdClient.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdClients */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdClients */
  String toString() => JSON.stringify(this.toJson());

}

class AdUnit {

  /** Identity code of this ad unit, not necessarily unique across ad clients. */
  String code;

  /** Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  String id;

  /** Kind of resource this is, in this case adexchangeseller#adUnit. */
  String kind;

  /** Name of this ad unit. */
  String name;

  /** Status of this ad unit. Possible values are:
NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.

ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.

INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days. */
  String status;

  /** Create new AdUnit from JSON data */
  AdUnit.fromJson(Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for AdUnit */
  Map toJson() {
    var output = new Map();

    if (code != null) {
      output["code"] = code;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of AdUnit */
  String toString() => JSON.stringify(this.toJson());

}

class AdUnits {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ad units returned in this list response. */
  List<AdUnit> items;

  /** Kind of list this is, in this case adexchangeseller#adUnits. */
  String kind;

  /** Continuation token used to page through ad units. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new AdUnits from JSON data */
  AdUnits.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AdUnit.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdUnits */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdUnits */
  String toString() => JSON.stringify(this.toJson());

}

class CustomChannel {

  /** Code of this custom channel, not necessarily unique across ad clients. */
  String code;

  /** Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  String id;

  /** Kind of resource this is, in this case adexchangeseller#customChannel. */
  String kind;

  /** Name of this custom channel. */
  String name;

  /** The targeting information of this custom channel, if activated. */
  CustomChannelTargetingInfo targetingInfo;

  /** Create new CustomChannel from JSON data */
  CustomChannel.fromJson(Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("targetingInfo")) {
      targetingInfo = new CustomChannelTargetingInfo.fromJson(json["targetingInfo"]);
    }
  }

  /** Create JSON Object for CustomChannel */
  Map toJson() {
    var output = new Map();

    if (code != null) {
      output["code"] = code;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (targetingInfo != null) {
      output["targetingInfo"] = targetingInfo.toJson();
    }

    return output;
  }

  /** Return String representation of CustomChannel */
  String toString() => JSON.stringify(this.toJson());

}

/** The targeting information of this custom channel, if activated. */
class CustomChannelTargetingInfo {

  /** The name used to describe this channel externally. */
  String adsAppearOn;

  /** The external description of the channel. */
  String description;

  /** The locations in which ads appear. (Only valid for content and mobile content ads). Acceptable values for content ads are: TOP_LEFT, TOP_CENTER, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT, MULTIPLE_LOCATIONS. Acceptable values for mobile content ads are: TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS. */
  String location;

  /** The language of the sites ads will be displayed on. */
  String siteLanguage;

  /** Create new CustomChannelTargetingInfo from JSON data */
  CustomChannelTargetingInfo.fromJson(Map json) {
    if (json.containsKey("adsAppearOn")) {
      adsAppearOn = json["adsAppearOn"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("siteLanguage")) {
      siteLanguage = json["siteLanguage"];
    }
  }

  /** Create JSON Object for CustomChannelTargetingInfo */
  Map toJson() {
    var output = new Map();

    if (adsAppearOn != null) {
      output["adsAppearOn"] = adsAppearOn;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (siteLanguage != null) {
      output["siteLanguage"] = siteLanguage;
    }

    return output;
  }

  /** Return String representation of CustomChannelTargetingInfo */
  String toString() => JSON.stringify(this.toJson());

}

class CustomChannels {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The custom channels returned in this list response. */
  List<CustomChannel> items;

  /** Kind of list this is, in this case adexchangeseller#customChannels. */
  String kind;

  /** Continuation token used to page through custom channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new CustomChannels from JSON data */
  CustomChannels.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CustomChannel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CustomChannels */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CustomChannels */
  String toString() => JSON.stringify(this.toJson());

}

class Report {

  /** The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  List<String> averages;

  /** The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request. */
  List<ReportHeaders> headers;

  /** Kind this is, in this case adexchangeseller#report. */
  String kind;

  /** The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit. */
  String totalMatchedRows;

  /** The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  List<String> totals;

  /** Any warnings associated with generation of the report. */
  List<String> warnings;

  /** Create new Report from JSON data */
  Report.fromJson(Map json) {
    if (json.containsKey("averages")) {
      averages = [];
      json["averages"].forEach((item) {
        averages.add(item);
      });
    }
    if (json.containsKey("headers")) {
      headers = [];
      json["headers"].forEach((item) {
        headers.add(new ReportHeaders.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalMatchedRows")) {
      totalMatchedRows = json["totalMatchedRows"];
    }
    if (json.containsKey("totals")) {
      totals = [];
      json["totals"].forEach((item) {
        totals.add(item);
      });
    }
    if (json.containsKey("warnings")) {
      warnings = [];
      json["warnings"].forEach((item) {
        warnings.add(item);
      });
    }
  }

  /** Create JSON Object for Report */
  Map toJson() {
    var output = new Map();

    if (averages != null) {
      output["averages"] = new List();
      averages.forEach((item) {
        output["averages"].add(item);
      });
    }
    if (headers != null) {
      output["headers"] = new List();
      headers.forEach((item) {
        output["headers"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (totalMatchedRows != null) {
      output["totalMatchedRows"] = totalMatchedRows;
    }
    if (totals != null) {
      output["totals"] = new List();
      totals.forEach((item) {
        output["totals"].add(item);
      });
    }
    if (warnings != null) {
      output["warnings"] = new List();
      warnings.forEach((item) {
        output["warnings"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Report */
  String toString() => JSON.stringify(this.toJson());

}

class ReportHeaders {

  /** The currency of this column. Only present if the header type is METRIC_CURRENCY. */
  String currency;

  /** The name of the header. */
  String name;

  /** The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or METRIC_CURRENCY. */
  String type;

  /** Create new ReportHeaders from JSON data */
  ReportHeaders.fromJson(Map json) {
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ReportHeaders */
  Map toJson() {
    var output = new Map();

    if (currency != null) {
      output["currency"] = currency;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ReportHeaders */
  String toString() => JSON.stringify(this.toJson());

}

class SavedReport {

  /** Unique identifier of this saved report. */
  String id;

  /** Kind of resource this is, in this case adexchangeseller#savedReport. */
  String kind;

  /** This saved report's name. */
  String name;

  /** Create new SavedReport from JSON data */
  SavedReport.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for SavedReport */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of SavedReport */
  String toString() => JSON.stringify(this.toJson());

}

class SavedReports {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The saved reports returned in this list response. */
  List<SavedReport> items;

  /** Kind of list this is, in this case adexchangeseller#savedReports. */
  String kind;

  /** Continuation token used to page through saved reports. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new SavedReports from JSON data */
  SavedReports.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new SavedReport.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for SavedReports */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of SavedReports */
  String toString() => JSON.stringify(this.toJson());

}

class UrlChannel {

  /** Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  String id;

  /** Kind of resource this is, in this case adexchangeseller#urlChannel. */
  String kind;

  /** URL Pattern of this URL channel. Does not include "http://" or "https://". Example: www.example.com/home */
  String urlPattern;

  /** Create new UrlChannel from JSON data */
  UrlChannel.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("urlPattern")) {
      urlPattern = json["urlPattern"];
    }
  }

  /** Create JSON Object for UrlChannel */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (urlPattern != null) {
      output["urlPattern"] = urlPattern;
    }

    return output;
  }

  /** Return String representation of UrlChannel */
  String toString() => JSON.stringify(this.toJson());

}

class UrlChannels {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The URL channels returned in this list response. */
  List<UrlChannel> items;

  /** Kind of list this is, in this case adexchangeseller#urlChannels. */
  String kind;

  /** Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new UrlChannels from JSON data */
  UrlChannels.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new UrlChannel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for UrlChannels */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of UrlChannels */
  String toString() => JSON.stringify(this.toJson());

}

