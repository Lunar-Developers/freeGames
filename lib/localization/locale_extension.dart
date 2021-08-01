import 'package:easy_localization/easy_localization.dart';

export 'package:free_games/localization/locale_keys.g.dart';

extension LocaleExtension on String {
  String get tra => this.tr();
}
