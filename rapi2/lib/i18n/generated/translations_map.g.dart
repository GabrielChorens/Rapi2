part of 'translations.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'core.connection_failure_dialog.title': return '¡Vaya!';
			case 'core.connection_failure_dialog.content': return 'Ha ocurrido un error inesperado en la conexión';
			case 'core.connection_failure_dialog.action_button': return 'Reintentar';
			case 'core.connection_failure_dialog.snackbar': return 'No hay conexión a internet';
			case 'core.permissions': return 'Para aprovechar las funcionalidades de ubicacion habilita los permisos';
			case 'core.unknown_error': return 'Ups! Algo salio mal...';
			case 'splash.location_dialog.content1': return 'Activar ubicación';
			case 'splash.location_dialog.content2': return 'Podemos mostrarte los negocios más cercanos a tu ubicación';
			case 'splash.location_dialog.ignore': return 'No, gracias';
			case 'splash.location_dialog.activate': return 'Activar';
			default: return null;
		}
	}
}
