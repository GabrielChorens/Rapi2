part of 'translations.g.dart';

// Path: <root>
class _TranslationsEs implements BaseTranslations<AppLocale, _TranslationsEs> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, _TranslationsEs> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsEs _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsCoreEs core = _TranslationsCoreEs._(_root);
	late final _TranslationsSplashEs splash = _TranslationsSplashEs._(_root);
}

// Path: core
class _TranslationsCoreEs {
	_TranslationsCoreEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	late final _TranslationsCoreConnectionFailureDialogEs connection_failure_dialog = _TranslationsCoreConnectionFailureDialogEs._(_root);
	String get permissions => 'Para aprovechar las funcionalidades de ubicacion habilita los permisos';
	String get unknown_error => 'Ups! Algo salio mal...';
}

// Path: splash
class _TranslationsSplashEs {
	_TranslationsSplashEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	late final _TranslationsSplashLocationDialogEs location_dialog = _TranslationsSplashLocationDialogEs._(_root);
}

// Path: core.connection_failure_dialog
class _TranslationsCoreConnectionFailureDialogEs {
	_TranslationsCoreConnectionFailureDialogEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get title => '¡Vaya!';
	String get content => 'Ha ocurrido un error inesperado en la conexión';
	String get action_button => 'Reintentar';
	String get snackbar => 'No hay conexión a internet';
}

// Path: splash.location_dialog
class _TranslationsSplashLocationDialogEs {
	_TranslationsSplashLocationDialogEs._(this._root);

	final _TranslationsEs _root; // ignore: unused_field

	// Translations
	String get content1 => 'Activar ubicación';
	String get content2 => 'Podemos mostrarte los negocios más cercanos a tu ubicación';
	String get ignore => 'No, gracias';
	String get activate => 'Activar';
}
