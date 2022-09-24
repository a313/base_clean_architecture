import 'package:url_launcher/url_launcher.dart';

class Urllauncher {
  Future<bool> launch(String url, {String? fallbackUrl}) async {
    final Uri? uri = Uri.tryParse(url.trim());
    if (uri != null && await canLaunchUrl(uri)) {
      if (uri.scheme == 'http' || uri.scheme == 'https') {
        return launchUrl(uri);
      }
      return launchUrl(uri, mode: LaunchMode.externalApplication);
    }
    if (fallbackUrl != null) {
      return launch(fallbackUrl);
    } else {
      return false;
    }
  }

  Future<bool> launchExternalApplication(String url,
      {String? fallbackUrl}) async {
    final Uri? uri = Uri.tryParse(url.trim());
    if (uri != null && await canLaunchUrl(uri)) {
      final result = await launchUrl(uri, mode: LaunchMode.externalApplication);
      return result;
    }
    if (fallbackUrl != null) {
      return launchExternalApplication(fallbackUrl);
    } else {
      return false;
    }
  }
}
