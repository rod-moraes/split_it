import 'package:package_info_plus/package_info_plus.dart';

import '../core.dart';

class AppConfigController {
  static final AppConfigController _instance = AppConfigController._internal();

  // passes the instantiation to the _instance object
  factory AppConfigController() => _instance;

  //initialize variables in here
  AppConfigController._internal() {}

  AppThemeController controllerAppTheme = AppThemeController();
  VersionInfo versionInfo = VersionInfo();
}

class UtilsConst {
  //SERVIDOR
  static String server = "http://10.0.2.2/";
}

class VersionInfo {
  static final VersionInfo _singleton = VersionInfo._internal();
  late PackageInfo versionInfo;
  factory VersionInfo({PackageInfo? newVersion}) {
    if (newVersion != null) _singleton.versionInfo = newVersion;
    return _singleton;
  }

  VersionInfo._internal();
}
