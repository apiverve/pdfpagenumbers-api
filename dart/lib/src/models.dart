/// Response models for the PDF Page Numbers API.

/// API Response wrapper.
class PdfpagenumbersResponse {
  final String status;
  final dynamic error;
  final PdfpagenumbersData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PdfpagenumbersResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PdfpagenumbersResponse.fromJson(Map<String, dynamic> json) => PdfpagenumbersResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PdfpagenumbersData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the PDF Page Numbers API.

class PdfpagenumbersData {
  String? pdfName;
  num? pageCount;
  num? numberedPages;
  String? position;
  String? format;
  num? startAt;
  String? lastLabel;
  num? size;
  num? expires;
  String? downloadURL;

  PdfpagenumbersData({
    this.pdfName,
    this.pageCount,
    this.numberedPages,
    this.position,
    this.format,
    this.startAt,
    this.lastLabel,
    this.size,
    this.expires,
    this.downloadURL,
  });

  factory PdfpagenumbersData.fromJson(Map<String, dynamic> json) => PdfpagenumbersData(
      pdfName: json['pdfName'],
      pageCount: json['pageCount'],
      numberedPages: json['numberedPages'],
      position: json['position'],
      format: json['format'],
      startAt: json['startAt'],
      lastLabel: json['lastLabel'],
      size: json['size'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class PdfpagenumbersRequest {
  String? format;
  String? pdf;

  PdfpagenumbersRequest({
    this.format,
    this.pdf,
  });

  Map<String, dynamic> toJson() => {
      if (format != null) 'format': format,
      if (pdf != null) 'pdf': pdf,
    };
}
