part of mbc_common;

class AppLocalizations {
  final Locale locale;

  // Static member to have a simple access to the delegate from the MaterialApp
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  AppLocalizations(this.locale);

  // Helper method to keep the code in the widgets concise
  // Localizations are accessed using an InheritedWidget "of" syntax
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  late Map<String, String> _localizedStrings;
  late Map<String, String> _localizedEnglishStrings;

  Future<bool> load() async {
    // Load the language JSON file from the "lang" folder
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    String jsonEnglishString = await rootBundle.loadString('lang/en.json');
    Map<String, dynamic> jsonEnglishMap = json.decode(jsonEnglishString);

    _localizedEnglishStrings = jsonEnglishMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  // This method will be called from every widget which needs a localized text
  String? translate(String key) {
    return _localizedStrings[key];
  }

  String? translateToEn(String key) {
    return _localizedEnglishStrings[key];
  }
}

extension LocalizedBuildContext on BuildContext {
  AppLocalizations? get loc => AppLocalizations.of(this);

  String get lnCode {
    return AppLocalizations.of(this)!.locale.languageCode;
  }

  bool get isEn {
    return AppLocalizations.of(this)!.locale.languageCode == 'en';
  }

  bool get isFr {
    return AppLocalizations.of(this)!.locale.languageCode == 'fr';
  }
}

extension TranslationHelper on Widget {
  String translate(BuildContext context, String key) {
    return AppLocalizations.of(context)?.translate(key) ?? '';
  }
}

// LocalizationsDelegate is a factory for a set of localized resources
// In this case, the localized strings will be gotten in an AppLocalizations object
class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  // This delegate instance will never change (it doesn't even have fields!)
  // It can provide a constant constructor.
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language codes here
    return ['en', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs
    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
