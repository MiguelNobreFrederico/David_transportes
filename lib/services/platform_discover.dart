// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class PlatformDiscover {
  static String get platform {
    String userAgent = html.window.navigator.userAgent.toLowerCase();

    List<String> platforms = ['android', 'iphone', 'ipad'];

    String detectedPlatform = platforms.firstWhere(
      (platform) => userAgent.contains(platform),
      orElse: () => 'unknown',
    );

    return detectedPlatform;
  }

  static bool get isMobile => platform != "unknown";
}
