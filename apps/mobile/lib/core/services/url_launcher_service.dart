import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  UrlLauncherService._();

  static final UrlLauncherService instance = UrlLauncherService._();

  Future<bool> openUrl(String url) async {
    final uri = Uri.parse(url);

    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
