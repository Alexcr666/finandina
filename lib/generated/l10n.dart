// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Con`
  String get title1 {
    return Intl.message(
      'Con',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `Banco Finandina`
  String get title1v2 {
    return Intl.message(
      'Banco Finandina',
      name: 'title1v2',
      desc: '',
      args: [],
    );
  }

  /// `tienes el poder de ser libre`
  String get title2 {
    return Intl.message(
      'tienes el poder de ser libre',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `Descubre lo que puedes hacer con tu`
  String get title2v2 {
    return Intl.message(
      'Descubre lo que puedes hacer con tu',
      name: 'title2v2',
      desc: '',
      args: [],
    );
  }

  /// `App Banco finandina`
  String get title2v3 {
    return Intl.message(
      'App Banco finandina',
      name: 'title2v3',
      desc: '',
      args: [],
    );
  }

  /// `Tus productos a la mano`
  String get page2title {
    return Intl.message(
      'Tus productos a la mano',
      name: 'page2title',
      desc: '',
      args: [],
    );
  }

  /// `Adminístralos libremente desde cualquier lugar, fácil y rápido.`
  String get page2subtitle {
    return Intl.message(
      'Adminístralos libremente desde cualquier lugar, fácil y rápido.',
      name: 'page2subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Paga libremente`
  String get page3title {
    return Intl.message(
      'Paga libremente',
      name: 'page3title',
      desc: '',
      args: [],
    );
  }

  /// `Puedes pagar tus productos, recibos y facturas en cualquier momento y lugar.`
  String get page3subtitle {
    return Intl.message(
      'Puedes pagar tus productos, recibos y facturas en cualquier momento y lugar.',
      name: 'page3subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Envía dinero`
  String get page4title {
    return Intl.message(
      'Envía dinero',
      name: 'page4title',
      desc: '',
      args: [],
    );
  }

  /// `Pasa plata libremente y sin costo a cualquier cuenta bancaria o celular en Colombia.`
  String get page4subtitle {
    return Intl.message(
      'Pasa plata libremente y sin costo a cualquier cuenta bancaria o celular en Colombia.',
      name: 'page4subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Tu banco donde quieras`
  String get page5title {
    return Intl.message(
      'Tu banco donde quieras',
      name: 'page5title',
      desc: '',
      args: [],
    );
  }

  /// `La oficina más cercana es tu celular. Libérate de las filas y los trámites largos.`
  String get page5subtitle {
    return Intl.message(
      'La oficina más cercana es tu celular. Libérate de las filas y los trámites largos.',
      name: 'page5subtitle',
      desc: '',
      args: [],
    );
  }

  /// `¡Escanea y listo!`
  String get page6title {
    return Intl.message(
      '¡Escanea y listo!',
      name: 'page6title',
      desc: '',
      args: [],
    );
  }

  /// `Paga en datáfonos con QR y libérate de las tarjetas físicas.`
  String get page6subtitle {
    return Intl.message(
      'Paga en datáfonos con QR y libérate de las tarjetas físicas.',
      name: 'page6subtitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
