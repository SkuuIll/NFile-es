import 'package:flutter/material.dart';
import '../services/preferences_service.dart';

class AppStrings {
  static AppStrings _instance = AppStrings._();
  static AppStrings get current => _instance;
  static String _locale = 'es';

  static String get locale => _locale;

  static set locale(String value) {
    _locale = value;
    _instance = AppStrings._();
  }

  static void setLocale(BuildContext context, String newLocale) {
    _locale = newLocale;
    PreferencesService.saveLocale(newLocale);
    _instance = AppStrings._();
    final router = context.findAncestorStateOfType<State>();
    if (router != null) {
      (router as dynamic).setState?.call(() {});
    }
  }

  static String getLocale() => _locale;

  AppStrings._();

  factory AppStrings() => _instance;

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('es'),
  ];

  static const LocalizationsDelegate<AppStrings> delegate = _AppStringsDelegate();

  String get cancel => _locale == 'es' ? 'Cancelar' : 'Cancel';
  String get ok => _locale == 'es' ? 'Aceptar' : 'OK';
  String get save => _locale == 'es' ? 'Guardar' : 'Save';
  String get delete => _locale == 'es' ? 'Eliminar' : 'Delete';
  String get rename => _locale == 'es' ? 'Renombrar' : 'Rename';
  String get copy => _locale == 'es' ? 'Copiar' : 'Copy';
  String get cut => _locale == 'es' ? 'Cortar' : 'Cut';
  String get paste => _locale == 'es' ? 'Pegar' : 'Paste';
  String get share => _locale == 'es' ? 'Compartir' : 'Share';
  String get extract => _locale == 'es' ? 'Extraer' : 'Extract';
  String get archive => _locale == 'es' ? 'Comprimir' : 'Archive';
  String get close => _locale == 'es' ? 'Cerrar' : 'Close';
  String get done => _locale == 'es' ? 'Hecho' : 'Done';
  String get back => _locale == 'es' ? 'Atrás' : 'Back';
  String get exit => _locale == 'es' ? 'Salir' : 'Exit';
  String get home => _locale == 'es' ? 'Inicio' : 'Home';
  String get browse => _locale == 'es' ? 'Explorar' : 'Browse';
  String get search => _locale == 'es' ? 'Buscar' : 'Search';
  String get selectAll => _locale == 'es' ? 'Seleccionar Todo' : 'Select All';
  String get refresh => _locale == 'es' ? 'Actualizar' : 'Refresh';
  String get properties => _locale == 'es' ? 'Propiedades' : 'Properties';
  String get info => _locale == 'es' ? 'Información' : 'Info';
  String get more => _locale == 'es' ? 'Más' : 'More';
  String get preview => _locale == 'es' ? 'Vista Previa' : 'Preview';
  String get create => _locale == 'es' ? 'Crear' : 'Create';
  String get open => _locale == 'es' ? 'Abrir' : 'Open';
  String get edit => _locale == 'es' ? 'Editar' : 'Edit';
  String get upload => _locale == 'es' ? 'Subir' : 'Upload';
  String get download => _locale == 'es' ? 'Descargar' : 'Download';
  String get connect => _locale == 'es' ? 'Conectar' : 'Connect';
  String get disconnect => _locale == 'es' ? 'Desconectar' : 'Disconnect';
  String get restore => _locale == 'es' ? 'Restaurar' : 'Restore';
  String get clear => _locale == 'es' ? 'Limpiar' : 'Clear';
  String get skip => _locale == 'es' ? 'Omitir' : 'Skip';
  String get replace => _locale == 'es' ? 'Reemplazar' : 'Replace';
  String get keepBoth => _locale == 'es' ? 'Mantener Ambos' : 'Keep Both';
  String get uninstall => _locale == 'es' ? 'Desinstalar' : 'Uninstall';
  String get backup => _locale == 'es' ? 'Respaldo' : 'Backup';
  String get confirm => _locale == 'es' ? 'Confirmar' : 'Confirm';

  String get appTitle => 'NFile';
  String get appSubtitle => _locale == 'es' ? 'Suite Multimedia Bella' : 'Beautiful Media Suite';

  String get grantPermission => _locale == 'es' ? 'Conceder Permiso' : 'Grant Permission';
  String get storageAccessRequired => _locale == 'es' ? 'Acceso a Almacenamiento Requerido' : 'Storage Access Required';
  String get storagePermissionMessage => _locale == 'es'
      ? 'NFile requiere permiso de almacenamiento para administrar, organizar y mostrar tus archivos multimedia sin problemas.'
      : 'NFile requires storage permission to manage, organize, and display your media files seamlessly.';
  String get openingSharedDocument => _locale == 'es' ? 'Abriendo documento compartido...' : 'Opening shared document...';
  String get resolvingSecureContent => _locale == 'es' ? 'Resolviendo flujo de contenido seguro' : 'Resolving secure content stream';

  String get myFiles => _locale == 'es' ? 'Mis Archivos' : 'My Files';
  String get refreshDashboard => _locale == 'es' ? 'Actualizar Panel' : 'Refresh Dashboard';
  String get dashboardRefreshed => _locale == 'es' ? 'Panel actualizado correctamente' : 'Dashboard refreshed successfully';
  String get exitApplication => _locale == 'es' ? 'Salir de la Aplicación' : 'Exit Application';
  String get exitConfirmation => _locale == 'es' ? 'Confirmar Salida' : 'Exit Confirmation';
  String get exitConfirmationMessage => _locale == 'es'
      ? '¿Estás seguro de que quieres salir? Presiona atrás de nuevo o toca Salir para cerrar la aplicación.'
      : 'Are you sure you want to exit? Press back again or tap Exit to close the app.';
  String get pressBackAgain => _locale == 'es' ? 'Presiona atrás de nuevo para salir' : 'Press back again to exit';

  String get confirmDeletion => _locale == 'es' ? 'Confirmar Eliminación' : 'Confirm Deletion';
  String get deletePermanently => _locale == 'es' ? 'Eliminar Permanentemente' : 'Delete Permanently';
  String get deletePermanentlyQuestion => _locale == 'es' ? '¿Eliminar Permanentemente?' : 'Delete Permanently?';
  String get deleteSelectedItems => _locale == 'es' ? 'Eliminar Elementos Seleccionados' : 'Delete Selected Items';
  String get deleteSourceFiles => _locale == 'es' ? 'Eliminar archivos de origen al finalizar' : 'Delete source files after completion';

  String permanentlyDeleteItems(int count) => _locale == 'es'
      ? '¿Estás seguro de que quieres eliminar permanentemente ${count} elemento(s)? Esta acción no se puede deshacer.'
      : 'Are you sure you want to permanently delete $count selected items?';
  String permanentlyDeleteItemsArchive(int count) => _locale == 'es'
      ? '¿Estás seguro de que quieres eliminar precisamente ${count} elemento(s) del archivo? Esto no se puede deshacer.'
      : 'Are you sure you want to delete precisely these $count item(s) from the archive? This cannot be undone.';
  String deletedSuccessfully(String count) => _locale == 'es' ? 'Eliminado correctamente $count' : 'Successfully deleted $count';
  String permanentlyDeleted(int count) => _locale == 'es' ? 'Eliminado permanentemente $count elemento(s)' : 'Permanently deleted $count item(s)';
  String get failedToDelete => _locale == 'es' ? 'Error al eliminar elementos' : 'Failed to delete items';
  String errorDeleting(String e) => _locale == 'es' ? 'Error al eliminar: $e' : 'Error deleting items: $e';
  String get itemsDeleted => _locale == 'es' ? 'Elementos eliminados correctamente' : 'Items deleted successfully';

  String get recycleBin => _locale == 'es' ? 'Papelera de Reciclaje' : 'Recycle Bin';
  String get emptyRecycleBin => _locale == 'es' ? 'Vaciar Papelera' : 'Empty Recycle Bin';
  String get emptyRecycleBinQuestion => _locale == 'es' ? '¿Vaciar Papelera?' : 'Empty Recycle Bin?';
  String get emptyBin => _locale == 'es' ? 'Vaciar Papelera' : 'Empty Bin';
  String get recycleBinEmptied => _locale == 'es' ? 'Papelera vaciada correctamente' : 'Recycle Bin emptied successfully';
  String errorEmptyingBin(String e) => _locale == 'es' ? 'Error al vaciar papelera: $e' : 'Error emptying bin: $e';
  String get emptyRecycleBinMessage => _locale == 'es'
      ? '¿Estás seguro de que quieres eliminar permanentemente todos los elementos de la Papelera? Esta acción es irreversible.'
      : 'Are you sure you want to permanently delete all items in the Recycle Bin? This action is irreversible.';
  String deletePermanentlyRecycleMessage(int count) => _locale == 'es'
      ? '¿Estás seguro de que quieres eliminar permanentemente ${count} elemento(s)? Esta acción no se puede deshacer.'
      : 'Are you sure you want to permanently delete these $count item(s)? This action cannot be undone.';
  String select(int n) => _locale == 'es' ? '$n Seleccionado(s)' : '$n Selected';
  String get searchDeletedFiles => _locale == 'es' ? 'Buscar archivos eliminados...' : 'Search deleted files...';

  String restoredItems(int count) => _locale == 'es' ? 'Restaurado $count elemento(s) correctamente' : 'Restored $count item(s) successfully';
  String errorRestoring(String e) => _locale == 'es' ? 'Error al restaurar elementos: $e' : 'Error restoring items: $e';

  String get moreSettings => _locale == 'es' ? 'Más Ajustes' : 'More Settings';
  String get searchSettings => _locale == 'es' ? 'Buscar ajustes...' : 'Search settings...';

  String get generalAndBehavior => _locale == 'es' ? 'General y Comportamiento' : 'General & Behavior';
  String get generalAndBehaviorSub => _locale == 'es' ? 'Pantalla predeterminada, controles de navegación y accesos directos' : 'Default screen, navigation controls, and shortcuts';
  String get appearanceAndThemes => _locale == 'es' ? 'Apariencia y Temas' : 'Appearance & Themes';
  String get appearanceAndThemesSub => _locale == 'es' ? 'Temas, iconos de aplicación, estilos de carpeta y tipografía' : 'Themes, app icons, folder styles, and typography';
  String get fileExplorerOptions => _locale == 'es' ? 'Opciones del Explorador' : 'File Explorer Options';
  String get fileExplorerOptionsSub => _locale == 'es' ? 'Barra de direcciones, archivos ocultos, pestañas y arrastrar y soltar' : 'Address bar, hidden files, tabs, and drag & drop';
  String get listAndLayout => _locale == 'es' ? 'Estilo de Lista y Diseño' : 'List & Layout Styling';
  String get listAndLayoutSub => _locale == 'es' ? 'Tamaños de carpeta, conteos y formatos de fecha/hora' : 'Folder sizes, counts, and time/date formats';
  String get mediaPreferences => _locale == 'es' ? 'Preferencias de Medios' : 'Media Preferences';
  String get mediaPreferencesSub => _locale == 'es' ? 'Vista de álbum predeterminada y vistas previas en miniatura' : 'Default album view and thumbnail previews';
  String get fileActionsAndViewers => _locale == 'es' ? 'Acciones de Archivos y Visores' : 'File Actions & Viewers';
  String get fileActionsAndViewersSub => _locale == 'es' ? 'Acciones de apertura y configuración de visores predeterminados' : 'Open actions and default viewers configuration';
  String get recycleBinTrash => _locale == 'es' ? 'Papelera de Reciclaje' : 'Recycle Bin (Trash)';
  String get recycleBinTrashSub => _locale == 'es' ? 'Opciones de papelera y duración de eliminación automática' : 'Recycle bin toggles and auto-delete duration';
  String get backupAndRestore => _locale == 'es' ? 'Respaldo y Restauración' : 'Backup & Restore';
  String get backupAndRestoreSub => _locale == 'es' ? 'Respaldar tu configuración en un archivo JSON o restaurarla' : 'Backup your settings to a JSON file or restore them';

  String get defaultToBrowseScreen => _locale == 'es' ? 'Predeterminar a Pantalla de Exploración' : 'Default to Browse Screen';
  String get defaultToBrowseScreenSub => _locale == 'es' ? 'Iniciar directamente en el explorador de almacenamiento al abrir la aplicación' : 'Directly launch into the Browse storage explorer on app start';
  String get rememberLastFolder => _locale == 'es' ? 'Recordar Última Carpeta Abierta' : 'Remember Last Opened Folder';
  String get rememberLastFolderSub => _locale == 'es' ? 'Abrir la última carpeta explorada al iniciar la aplicación' : 'Open the last folder you browsed when launching the app';
  String get showHomeBrowseBar => _locale == 'es' ? 'Mostrar Barra Inferior Inicio/Explorar' : 'Show Home & Browse Bottom Bar';
  String get showHomeBrowseBarSub => _locale == 'es' ? 'Alternar visibilidad de la barra de navegación inferior en la pantalla de Inicio' : 'Toggle bottom navigation bar visibility on the Home screen';
  String get hideNavLabels => _locale == 'es' ? 'Ocultar Etiquetas de Navegación' : 'Hide Bottom Navigation Labels';
  String get hideNavLabelsSub => _locale == 'es' ? 'Ocultar etiquetas de texto de la barra inferior (Inicio/Explorar) para un aspecto más limpio y compacto' : 'Hide text labels of the bottom bar (Home/Browse) for a cleaner and compact look';
  String get hideAndroidNavBar => _locale == 'es' ? 'Ocultar Barra de Navegación Android' : 'Hide Android Navigation Bar';
  String get hideAndroidNavBarSub => _locale == 'es' ? 'Ocultar barra de navegación inferior para maximizar el espacio de pantalla (deslizar hacia arriba la muestra)' : 'Hide bottom navigation bar to maximize screen real estate (swiping up displays it)';
  String get showBottomNavBar => _locale == 'es' ? 'Mostrar Barra de Acción Inferior' : 'Show Bottom Navigation Bar';
  String get showBottomNavBarSub => _locale == 'es' ? 'Habilitar barra de acción inferior en la pantalla de Exploración' : 'Enable bottom action bar on Browse screen';
  String get hideActionBarLabels => _locale == 'es' ? 'Ocultar Etiquetas de Barra de Acción' : 'Hide Action Bar Text Labels';
  String get hideActionBarLabelsSub => _locale == 'es' ? 'Mostrar solo iconos en la barra de acción de selección inferior' : 'Show only icons in selection action bar at bottom of Browse & Media screens';
  String get customizeShortcuts => _locale == 'es' ? 'Personalizar Accesos Directos' : 'Customize Shortcuts';
  String get customizeShortcutsSub => _locale == 'es' ? 'Reordenar y alternar visibilidad de elementos de categorías rápidas' : 'Reorder and toggle visibility of quick category items';
  String get showRecentFiles => _locale == 'es' ? 'Mostrar Archivos Recientes' : 'Show Recent Files';
  String get showRecentFilesSub => _locale == 'es' ? 'Mostrar la lista de archivos accedidos recientemente en la pantalla de Inicio' : 'Display the list of recently accessed files on the Home screen';
  String get preventLeftBackGesture => _locale == 'es' ? 'Prevenir Gesto de Retroceso Izquierdo para el Cajón' : 'Prevent Left Back Gesture for Drawer';
  String get preventLeftBackGestureSub => _locale == 'es'
      ? 'Excluye el borde izquierdo de la pantalla de los gestos de retroceso de Android, facilitando abrir el cajón. Aún puedes deslizar desde el borde derecho para volver.'
      : 'Excludes the left edge of the screen from Android system back gestures, making it easier to swipe open the drawer. You can still swipe from the right edge to go back.';
  String get appExitBehavior => _locale == 'es' ? 'Comportamiento de Salida' : 'App Exit Behavior';

  String get accentColorTheme => _locale == 'es' ? 'Color de Acento / Tema Dinámico' : 'Accent Color / Dynamic Theme';
  String get folderIconStyle => _locale == 'es' ? 'Estilo de Icono de Carpeta' : 'Folder Icon Style';
  String get appDrawerButtonStyle => _locale == 'es' ? 'Estilo del Botón del Cajón' : 'App Drawer Button Style';
  String get amoledBlackMode => _locale == 'es' ? 'Modo Negro AMOLED' : 'AMOLED Black Mode';
  String get amoledBlackModeSub => _locale == 'es' ? 'Usar fondo negro puro en Modo Oscuro para pantallas AMOLED' : 'Use pitch black background in Dark Mode for AMOLED screens';
  String get appIcon => _locale == 'es' ? 'Icono de Aplicación' : 'App Icon';
  String get appTypography => _locale == 'es' ? 'Tipografía / Familia de Fuente' : 'App Typography / Font Family';
  String get useMaterialIcons => _locale == 'es' ? 'Usar Iconos Material Expresivos' : 'Use Expressive Material Icons';
  String get useMaterialIconsSub => _locale == 'es' ? 'Reemplazar iconos Broken personalizados con iconos estándar de Material Design' : 'Replace custom Broken icons with standard Material Design icons';

  String get showAddressBar => _locale == 'es' ? 'Mostrar Barra de Direcciones' : 'Show Address Bar';
  String get showAddressBarSub => _locale == 'es' ? 'Mostrar una barra de direcciones editable estilo Windows Explorer en la parte superior de la lista de archivos' : 'Display an editable Windows-Explorer-style address bar at the top of file list';
  String get showFloatingButton => _locale == 'es' ? 'Mostrar Botón Flotante \'+\'' : 'Show Floating \'+\' Button';
  String get showFloatingButtonSub => _locale == 'es' ? 'Habilitar botón de creación rápida (+) en la parte inferior de la pantalla de Exploración' : 'Enable quick creation (+) button at bottom of Browse screen';
  String get showHiddenFiles => _locale == 'es' ? 'Mostrar Archivos Ocultos' : 'Show Hidden Files';
  String get showHiddenFilesSub => _locale == 'es' ? 'Mostrar archivos y carpetas del sistema que comienzan con un punto (.)' : 'Display system files and folders starting with a dot (.)';
  String get highlightExitedFolder => _locale == 'es' ? 'Resaltar Carpeta de Salida' : 'Highlight Exited Folder';
  String get highlightExitedFolderSub => _locale == 'es' ? 'Destellar brevemente y desplazarse a la carpeta de la que acabas de salir al volver' : 'Briefly flash and scroll to the folder you just exited when going back';
  String get enableMultipleTabs => _locale == 'es' ? 'Habilitar Múltiples Pestañas' : 'Enable Multiple Tabs';
  String get enableMultipleTabsSub => _locale == 'es' ? 'Permitir abrir múltiples carpetas en pestañas separadas para navegación rápida' : 'Allow opening multiple folders in separate tabs for quick navigation';
  String get enableSplitScreen => _locale == 'es' ? 'Habilitar Pantalla Dividida' : 'Enable Split Screen';
  String get enableSplitScreenSub => _locale == 'es' ? 'Explorar dos directorios lado a lado y transferir archivos fácilmente' : 'Browse two directories side by side and transfer files easily';
  String get enableDragAndDrop => _locale == 'es' ? 'Habilitar Arrastrar y Soltar' : 'Enable Drag & Drop';
  String get enableDragAndDropSub => _locale == 'es' ? 'Mantén presionado y arrastra carpetas o archivos para moverlos a otras carpetas' : 'Long press and drag folders or files to move them into other folders';
  String get confirmDragDrop => _locale == 'es' ? 'Confirmar Acciones de Arrastrar y Soltar' : 'Confirm Drag & Drop Actions';
  String get confirmDragDropSub => _locale == 'es' ? 'Mostrar ventana de opciones (Copiar, Mover, Comprimir) al soltar archivos' : 'Show options popup (Copy, Move, Archive) when dropping files';

  String get showFolderFileCount => _locale == 'es' ? 'Mostrar Encabezado de Conteo de Carpetas/Archivos' : 'Show Folder & File Count Header';
  String get showFolderFileCountSub => _locale == 'es' ? 'Mostrar total de carpetas y archivos bajo la barra de título de almacenamiento' : 'Display total folders and files count under storage title bar';
  String get showFolderContentCount => _locale == 'es' ? 'Mostrar Conteo de Contenido de Carpeta' : 'Show Folder Content Count';
  String get showFolderContentCountSub => _locale == 'es' ? 'Calcular y mostrar total de archivos y carpetas dentro de los listados de directorios' : 'Calculate and display total files and folders inside directory listings';
  String get showFolderSize => _locale == 'es' ? 'Mostrar Tamaño de Carpeta' : 'Show Folder Size';
  String get showFolderSizeSub => _locale == 'es' ? 'Calcular y mostrar el tamaño total de todos los archivos dentro de los directorios (puede afectar el rendimiento del listado)' : 'Calculate and display total size of all files inside directories (can affect listing performance)';
  String get use24HourFormat => _locale == 'es' ? 'Usar Formato de Hora 24h' : 'Use 24-Hour Time Format';
  String get use24HourFormatSub => _locale == 'es' ? 'Alternar entre formato de 12 horas (AM/PM) y 24 horas en todas las listas' : 'Toggle between 12-hour (AM/PM) and 24-hour time formatting across lists';
  String get hideTimeDate => _locale == 'es' ? 'Ocultar Hora y Fecha de las Listas' : 'Hide Time & Date from Lists';
  String get hideTimeDateSub => _locale == 'es' ? 'Ocultar completamente fechas y horas de modificación debajo de archivos y carpetas' : 'Completely hide modification dates and times under files and folders';
  String get adaptiveMultiLine => _locale == 'es' ? 'Nombres de Archivo Multilínea Adaptativos' : 'Adaptive Multi-line Filenames';
  String get adaptiveMultiLineSub => _locale == 'es' ? 'Permitir que los nombres de archivo se envuelvan en 3 líneas en lugar de truncarse' : 'Allow filenames to wrap 3 lines instead of truncating';
  String get hide3DotButtons => _locale == 'es' ? 'Ocultar Botones de 3 Puntos' : 'Hide 3-Dot Action Buttons';
  String get hide3DotButtonsSub => _locale == 'es' ? 'Ocultar el botón de menú de tres puntos junto a carpetas y archivos' : 'Hide the three-dot option menu button next to folders and files';
  String get threeDotDisabledInfo => _locale == 'es' ? 'Información de 3 Puntos Deshabilitada' : '3-Dot Disabled Trailing Info';

  String get defaultAlbumView => _locale == 'es' ? 'Vista Preferida de Álbum' : 'Default Album Preferred View';
  String get defaultAlbumViewSub => _locale == 'es' ? 'Abrir categorías rápidas de Imágenes/Videos directamente en vista preferida de Carpetas (Álbumes)' : 'Open Images/Videos quick categories directly in Folders (Albums) preferred view';
  String get showMediaPreviews => _locale == 'es' ? 'Mostar Vistas Previas de Medios' : 'Show Media Previews';
  String get showMediaPreviewsSub => _locale == 'es' ? 'Mostrar miniaturas de imágenes y videos en lugar de iconos de archivo genéricos' : 'Display actual image and video thumbnails instead of generic file icons';

  String get skipOpenWithDialog => _locale == 'es' ? 'Omitir Diálogo "Abrir Con"' : 'Skip "Open With" Dialog';
  String get skipOpenWithDialogSub => _locale == 'es' ? 'Evitar el diálogo de elección de aplicación y abrir archivos directamente con visores predeterminados' : 'Bypass the application choice dialog and immediately open files with default viewers';
  String get resetDefaultViewers => _locale == 'es' ? 'Restablecer Visores de Archivos Predeterminados' : 'Reset Default File Viewers';
  String get resetDefaultViewersSub => _locale == 'es' ? 'Limpiar todas las asociaciones "Abrir Con" recordadas para visores de archivos' : 'Clear all remembered "Open With" associations for file viewers';
  String get viewerChoicesReset => _locale == 'es' ? 'Todas las opciones de visor predeterminado han sido restablecidas' : 'All default viewer choices have been reset';

  String get enableRecycleBin => _locale == 'es' ? 'Habilitar Papelera de Reciclaje' : 'Enable Recycle Bin';
  String get enableRecycleBinSub => _locale == 'es' ? 'Mover archivos y carpetas eliminados a una Papelera oculta en lugar de eliminarlos permanentemente' : 'Move deleted files and folders to a hidden Recycle Bin instead of deleting permanently';
  String get autoDeleteTrashDuration => _locale == 'es' ? 'Duración de Eliminación Automática' : 'Auto-Delete Trash Duration';

  String get backupSettings => _locale == 'es' ? 'Respaldar Ajustes' : 'Backup Settings';
  String get backupSettingsSub => _locale == 'es' ? 'Guardar todos tus ajustes actuales en NFile/Backups/Settings/' : 'Save all your current settings to NFile/Backups/Settings/';
  String get restoreSettings => _locale == 'es' ? 'Restaurar Ajustes' : 'Restore Settings';
  String get restoreSettingsSub => _locale == 'es' ? 'Seleccionar y restaurar ajustes desde un archivo de respaldo JSON' : 'Select and restore settings from a JSON backup file';
  String get settingsBackedUp => _locale == 'es' ? 'Ajustes respaldados en NFile/Backups/Settings/nfile_settings_backup.json' : 'Settings backed up to NFile/Backups/Settings/nfile_settings_backup.json';
  String get settingsRestored => _locale == 'es' ? '¡Ajustes restaurados correctamente!' : 'Settings restored successfully!';
  String failedToBackup(String e) => _locale == 'es' ? 'Error al respaldar ajustes: $e' : 'Failed to backup settings: $e';
  String failedToRestore(String e) => _locale == 'es' ? 'Error al restaurar ajustes: $e' : 'Failed to restore settings: $e';

  String get chooseTrailingInfoStyle => _locale == 'es' ? 'Elegir Estilo de Información Final' : 'Choose Trailing Info Style';
  String get chooseExitBehavior => _locale == 'es' ? 'Elegir Comportamiento de Salida' : 'Choose Exit Behavior';
  String get chooseAccentTheme => _locale == 'es' ? 'Elegir Tema de Acento' : 'Choose Accent Theme';
  String get chooseFolderIconStyle => _locale == 'es' ? 'Elegir Estilo de Icono de Carpeta' : 'Choose Folder Icon Style';
  String get chooseDrawerButtonStyle => _locale == 'es' ? 'Elegir Estilo de Botón del Cajón' : 'Choose Drawer Button Style';
  String get appIconPicker => _locale == 'es' ? 'Selector de Icono de Aplicación' : 'App Icon Picker';
  String get appLauncherIcon => _locale == 'es' ? 'Icono de Lanzador de Aplicación' : 'App Launcher Icon';
  String get logo => 'Logo';
  String get logo1 => 'Logo 1';
  String get logo2 => 'Logo 2';
  String get logo3 => 'Logo 3';
  String get logo4 => 'Logo 4';
  String appIconSwitched(String title) => _locale == 'es' ? '¡Icono de aplicación cambiado a $title correctamente!' : 'App icon switched to $title successfully!';
  String get customFontLoaded => _locale == 'es' ? 'Fuente personalizada cargada' : 'Custom font loaded';
  String get failedToLoadFont => _locale == 'es' ? 'Error al cargar el archivo de fuente seleccionado.' : 'Failed to load the selected font file.';
  String get invalidFileType => _locale == 'es' ? 'Tipo de Archivo No Válido' : 'Invalid File Type';
  String get invalidFileTypeMessage => _locale == 'es' ? 'Por favor selecciona un archivo de fuente OpenType (.otf) o TrueType (.ttf) válido.' : 'Please select a valid OpenType (.otf) or TrueType (.ttf) font file.';
  String get removeCustomFont => _locale == 'es' ? 'Eliminar Fuente Personalizada' : 'Remove Custom Font';
  String get customFontRemoved => _locale == 'es' ? 'Fuente personalizada eliminada.' : 'Custom font removed.';
  String get pleaseSelectValidBackup => _locale == 'es' ? 'Por favor selecciona un archivo de respaldo .json válido' : 'Please select a valid .json settings backup file';

  String get systemAppDisabled => _locale == 'es' ? 'Aplicación del Sistema Deshabilitada' : 'System App Disabled';
  String failedToRequestSaf(String e) => _locale == 'es' ? 'Error al solicitar carpeta SAF: $e' : 'Failed to request SAF folder: $e';
  String get enterConnectionName => _locale == 'es' ? 'Por favor ingresa un nombre de conexión' : 'Please enter a connection name';
  String get enterServerAddress => _locale == 'es' ? 'Por favor ingresa dirección del servidor / nombre de host' : 'Please enter server address / hostname';
  String connectionFailed(String e) => _locale == 'es' ? 'Conexión fallida: $e' : 'Connection failed: $e';
  String get http => 'HTTP';
  String get httpsSecure => _locale == 'es' ? 'HTTPS (Seguro)' : 'HTTPS (Secure)';

  String get retryConnection => _locale == 'es' ? 'Reintentar Conexión' : 'Retry Connection';
  String get uploadClipboardHere => _locale == 'es' ? 'Subir Portapapeles Aquí' : 'Upload Clipboard Here';
  String get uploadLocalClipboard => _locale == 'es' ? 'Subir portapapeles local al servidor' : 'Upload local clipboard to server';
  String get newFolder => _locale == 'es' ? 'Nueva Carpeta' : 'New Folder';
  String get folderName => _locale == 'es' ? 'Nombre de carpeta' : 'Folder name';
  String get copyToLocalDevice => _locale == 'es' ? 'Copiar a Dispositivo Local' : 'Copy to Local Device';
  String get moveToLocalDevice => _locale == 'es' ? 'Mover a Dispositivo Local' : 'Move to Local Device';
  String get deleteQuestion => _locale == 'es' ? 'Eliminar' : 'Delete';

  String get navigation => _locale == 'es' ? 'Navegación' : 'Navigation';
  String get systemRoot => _locale == 'es' ? 'Raíz del Sistema' : 'System Root';
  String get globalSearch => _locale == 'es' ? 'Búsqueda Global' : 'Global Search';
  String get serversAndTools => _locale == 'es' ? 'Servidores y Herramientas' : 'Servers & Tools';
  String get privateWallet => _locale == 'es' ? 'Billetera Privada' : 'Private Wallet';
  String get ftpServer => _locale == 'es' ? 'Servidor FTP' : 'FTP Server';
  String get webSharing => _locale == 'es' ? 'Compartir Web' : 'Web Sharing';
  String get addRemoteConnection => _locale == 'es' ? 'Agregar Conexión Remota' : 'Add Remote Connection';
  String get quickCategories => _locale == 'es' ? 'Categorías Rápidas' : 'Quick Categories';
  String get addShortcut => _locale == 'es' ? 'Agregar Acceso Directo' : 'Add Shortcut';
  String get customizationAndSettings => _locale == 'es' ? 'Personalización y Ajustes' : 'Customization & Settings';
  String get lightMode => _locale == 'es' ? 'Modo Claro' : 'Light Mode';
  String get darkMode => _locale == 'es' ? 'Modo Oscuro' : 'Dark Mode';
  String get aboutNFile => _locale == 'es' ? 'Acerca de NFile' : 'About NFile';

  String couldNotOpenLink(String url) => _locale == 'es' ? 'No se pudo abrir el enlace: $url' : 'Could not open link: $url';
  String get starOnRepository => _locale == 'es' ? 'Estrella en el Repositorio' : 'Star on Repository';
  String get joinTelegram => _locale == 'es' ? 'Unirse al Canal de Telegram' : 'Join Telegram Channel';
  String get shareAppWithFriends => _locale == 'es' ? 'Compartir App con Amigos' : 'Share App with Friends';
  String get exploreGitHubSource => _locale == 'es' ? 'Explorar Código Fuente en GitHub' : 'Explore GitHub Source Code';

  String get copedToClipboard => _locale == 'es' ? 'Copiado al portapapeles' : 'Copied to clipboard';
  String get cutToClipboard => _locale == 'es' ? 'Cortado al portapapeles' : 'Cut to clipboard';
  String copedNItems(int n) => _locale == 'es' ? 'Copiado $n elemento(s)' : 'Copied $n item(s)';
  String cutNItems(int n) => _locale == 'es' ? 'Cortado $n elemento(s)' : 'Cut $n item(s)';
  String copedToClipboardN(int n) => _locale == 'es' ? 'Copiado $n elementos al portapapeles' : 'Copied $n items to clipboard';
  String copedLabelToClipboard(String label) => _locale == 'es' ? 'Copiado $label al portapapeles' : 'Copied $label to clipboard';
  String cutToClipboardN(int n) => _locale == 'es' ? 'Cortado $n elementos al portapapeles' : 'Cut $n items to clipboard';
  String get copedSelected => _locale == 'es' ? 'Elementos seleccionados copiados' : 'Copied selected items';
  String get cutSelected => _locale == 'es' ? 'Elementos seleccionados cortados' : 'Cut selected items';
  String get pastedSuccessfully => _locale == 'es' ? 'Pegado correctamente' : 'Pasted successfully';
  String pastedNItems(int n) => _locale == 'es' ? 'Pegado $n elemento(s)' : 'Pasted $n item(s)';
  String pastedItemsTo(int count, String dest) => _locale == 'es' ? 'Pegado $count elementos en $dest' : 'Pasted $count items to $dest';
  String get noShareableItems => _locale == 'es' ? 'No se encontraron elementos compartibles.' : 'No shareable items found.';
  String get noFilesToShare => _locale == 'es' ? 'No hay archivos disponibles para compartir' : 'No files available to share';
  String errorSharing(String e) => _locale == 'es' ? 'Error al compartir: $e' : 'Error sharing: $e';
  String errorPreparingFiles(String e) => _locale == 'es' ? 'Error al preparar archivos para compartir: $e' : 'Error preparing files to share: $e';
  String errorReadingSharedFile(String e) => _locale == 'es' ? 'Error al leer archivo compartido: $e' : 'Error reading shared file: $e';
  String get fileNotFoundOrNotShareable => _locale == 'es' ? 'Archivo no encontrado o no compartible.' : 'File not found or not shareable.';

  String get cannotMoveIntoItself => _locale == 'es' ? 'No se puede mover una carpeta dentro de sí misma o a la misma ubicación' : 'Cannot move a folder inside itself or same location';
  String get cannotCopyIntoItself => _locale == 'es' ? 'No se puede copiar una carpeta dentro de sí misma o a la misma ubicación' : 'Cannot copy a folder inside itself or same location';
  String movedSuccessfully(String name) => _locale == 'es' ? '$name movido correctamente' : 'Moved $name successfully';
  String copedSuccessfully(String name) => _locale == 'es' ? '$name copiado correctamente' : 'Copied $name successfully';
  String failedToMove(String e) => _locale == 'es' ? 'Error al mover elemento: $e' : 'Failed to move item: $e';
  String failedToCopy(String e) => _locale == 'es' ? 'Error al copiar elemento: $e' : 'Failed to copy item: $e';
  String failedToTransfer(String e) => _locale == 'es' ? 'Error al transferir: $e' : 'Failed to transfer: $e';
  String failedToConnectRemote(String e) => _locale == 'es' ? 'Error al conectar al servidor remoto: $e' : 'Failed to connect to remote server: $e';

  String get pasteHere => _locale == 'es' ? 'Pegar Aquí' : 'Paste Here';
  String pasteHereN(int n) => _locale == 'es' ? 'Pegar Aquí ($n)' : 'Paste Here ($n)';
  String get actionCancelled => _locale == 'es' ? 'Acción cancelada / Portapapeles limpiado' : 'Action cancelled / Clipboard cleared';
  String get extractToCurrentFolder => _locale == 'es' ? 'Extraer a Carpeta Actual' : 'Extract to Current Folder';
  String get addFile => _locale == 'es' ? 'Agregar Archivo' : 'Add File';

  String get addCustomPath => _locale == 'es' ? 'Agregar Ruta Personalizada' : 'Add Custom Path';
  String customPaths(int n) => _locale == 'es' ? '$n ruta(s) personalizada(s)' : '$n custom path(s)';
  String get addFolderFileShortcut => _locale == 'es' ? 'Agregar Acceso Directo a Carpeta/Archivo' : 'Add Folder / File Shortcut';
  String get customPathsTooltip => _locale == 'es' ? 'Rutas Personalizadas' : 'Custom Paths';
  String get deleteShortcut => _locale == 'es' ? 'Eliminar Acceso Directo' : 'Delete Shortcut';
  String get restoreLocation => _locale == 'es' ? 'Restaurar Ubicación' : 'Restore Location';
  String get excludeLocation => _locale == 'es' ? 'Excluir Ubicación' : 'Exclude Location';

  String get addNetworkConnection => _locale == 'es' ? 'Agregar Conexión de Red' : 'Add Network Connection';
  String get removeConnection => _locale == 'es' ? 'Eliminar Conexión' : 'Remove Connection';
  String get selectMode => _locale == 'es' ? 'Modo Selección' : 'Select Mode';
  String get viewAndSortOptions => _locale == 'es' ? 'Opciones de Vista y Orden' : 'View & Sort Options';
  String get storageVolumes => _locale == 'es' ? 'Volúmenes de Almacenamiento y Tarjeta SD' : 'Storage Volumes & SD Card';
  String get createNew => _locale == 'es' ? 'Crear Nuevo' : 'Create New';

  String get openWith => _locale == 'es' ? 'Abrir con...' : 'Open with...';
  String get justOnce => _locale == 'es' ? 'Solo una vez' : 'Just once';
  String get always => _locale == 'es' ? 'Siempre' : 'Always';
  String get openWithApp => _locale == 'es' ? 'Abrir con Aplicación' : 'Open with App';
  String get shareComingSoon => _locale == 'es' ? 'Compartir próximamente' : 'Share coming soon';
  String get savedSuccessfully => _locale == 'es' ? 'Guardado correctamente' : 'Saved successfully';
  String errorSaving(String e) => _locale == 'es' ? 'Error al guardar: $e' : 'Error saving: $e';
  String errorLoading(String e) => _locale == 'es' ? 'Error al cargar: $e' : 'Error loading: $e';
  String get standardMode => _locale == 'es' ? 'Modo Estándar' : 'Standard Mode';
  String get lagFreeMode => _locale == 'es' ? 'Modo Sin Retraso' : 'Lag-Free Mode';
  String get continuous => _locale == 'es' ? 'Continuo' : 'Continuous';
  String get singlePage => _locale == 'es' ? 'Página Única' : 'Single Page';
  String get vertical => _locale == 'es' ? 'Vertical' : 'Vertical';
  String get horizontal => _locale == 'es' ? 'Horizontal' : 'Horizontal';
  String get enableTextSelection => _locale == 'es' ? 'Habilitar Selección de Texto' : 'Enable Text Selection';
  String get displaySettings => _locale == 'es' ? 'Ajustes de Visualización' : 'Display Settings';
  String get emptySheet => _locale == 'es' ? 'Hoja Vacía' : 'Empty Sheet';

  String get htmlPreview => _locale == 'es' ? 'Vista Previa HTML' : 'HTML Preview';
  String get markdownPreview => _locale == 'es' ? 'Vista Previa Markdown' : 'Markdown Preview';
  String get reload => _locale == 'es' ? 'Recargar' : 'Reload';

  String get selectSyntax => _locale == 'es' ? 'Seleccionar Sintaxis' : 'Select Syntax';
  String get findReplace => _locale == 'es' ? 'Buscar / Reemplazar' : 'Find / Replace';
  String get saveFile => _locale == 'es' ? 'Guardar Archivo' : 'Save File';
  String get moreOptions => _locale == 'es' ? 'Más Opciones' : 'More Options';
  String defaultZoom(String pt) => _locale == 'es' ? 'Zoom Predeterminado ($pt)' : 'Default Zoom ($pt)';
  String syntax(String lang) => _locale == 'es' ? 'Sintaxis ($lang)' : 'Syntax ($lang)';
  String get find => _locale == 'es' ? 'Buscar...' : 'Find...';
  String get replaceWith => _locale == 'es' ? 'Reemplazar con...' : 'Replace with...';
  String get replaceAll => _locale == 'es' ? 'Reemplazar Todo' : 'Replace All';
  String get undo => _locale == 'es' ? 'Deshacer' : 'Undo';
  String get redo => _locale == 'es' ? 'Rehacer' : 'Redo';
  String get fileSaved => _locale == 'es' ? 'Archivo guardado correctamente' : 'File saved successfully';
  String errorLoadingFile(String e) => _locale == 'es' ? 'Error al cargar archivo: $e' : 'Error loading file: $e';
  String errorSavingFile(String e) => _locale == 'es' ? 'Error al guardar archivo: $e' : 'Error saving file: $e';
  String replacedOccurrences(int n) => _locale == 'es' ? 'Reemplazado $n ocurrencias' : 'Replaced $n occurrences';

  String ftpServerStarted(String ip, int port) => _locale == 'es' ? 'Servidor FTP iniciado en ftp://$ip:$port' : 'FTP Server started at ftp://$ip:$port';
  String get ftpServerStopped => _locale == 'es' ? 'Servidor FTP detenido correctamente' : 'FTP Server stopped successfully';
  String errorStartingFtp(String e) => _locale == 'es' ? 'Error al iniciar Servidor FTP: $e' : 'Error starting FTP Server: $e';
  String get stopServerBeforeConfig => _locale == 'es' ? 'Por favor detén el servidor antes de cambiar la configuración' : 'Please stop the server before changing configuration';
  String get changePort => _locale == 'es' ? 'Cambiar Puerto' : 'Change Port';
  String get portNumber => _locale == 'es' ? 'Número de Puerto' : 'Port Number';
  String get portHint => _locale == 'es' ? 'ej. 9999' : 'e.g., 9999';
  String get invalidPort => _locale == 'es' ? 'Número de puerto no válido' : 'Invalid port number';
  String get setUsername => _locale == 'es' ? 'Establecer Usuario' : 'Set Username';
  String get username => _locale == 'es' ? 'Usuario' : 'Username';
  String get usernameCannotBeEmpty => _locale == 'es' ? 'El nombre de usuario no puede estar vacío' : 'Username cannot be empty';
  String get stopServerBeforeEditing => _locale == 'es' ? 'Detén el servidor antes de editar la configuración' : 'Stop the server before editing settings';
  String get ftpShortcutAdded => _locale == 'es' ? '¡Acceso directo al Servidor FTP agregado a la pantalla de inicio!' : 'FTP Server shortcut added to home screen!';
  String get changeDirectory => _locale == 'es' ? 'Cambiar directorio' : 'Change directory';
  String get changePortOption => _locale == 'es' ? 'Cambiar puerto' : 'Change port';
  String get setUser => _locale == 'es' ? 'Establecer usuario' : 'Set user';
  String get anonymousAccess => _locale == 'es' ? 'Acceso anónimo' : 'Anonymous access';
  String get createShortcut => _locale == 'es' ? 'Crear acceso directo' : 'Create shortcut';
  String get homeDirectory => _locale == 'es' ? 'Directorio de inicio' : 'Home directory';
  String get userName => _locale == 'es' ? 'Nombre de usuario' : 'User name';
  String get showHiddenFilesFtp => _locale == 'es' ? 'Mostrar archivos ocultos' : 'Show hidden files';
  String get ftpes => 'FTPES';
  String get ftpesDescription => _locale == 'es' ? 'Conexión FTP segura sobre TLS explícito' : 'Secure FTP connection over explicit TLS';

  String webSharingStarted(String url) => _locale == 'es' ? '¡Servidor de Compartición HTTP Local iniciado! URL: $url' : 'Local HTTP Sharing Server started! URL: $url';
  String get webSharingStopped => _locale == 'es' ? 'Servidor de Compartición HTTP Local detenido.' : 'Local HTTP Sharing Server stopped.';
  String errorStartingWeb(String e) => _locale == 'es' ? 'Error al iniciar Servidor HTTP: $e' : 'Error starting HTTP Server: $e';
  String get internetCloudTunnel => _locale == 'es' ? '¡Túnel de nube de Internet en línea! Enlace temporal activo.' : 'Internet cloud tunnel online! Temporary link active.';
  String failedToStartCloud(String e) => _locale == 'es' ? 'Error al iniciar Compartición en Nube: $e' : 'Failed to start Cloud Share: $e';
  String get linkCopied => _locale == 'es' ? '¡Enlace copiado al portapapeles!' : 'Link copied to clipboard!';
  String get internetShareDeactivated => _locale == 'es' ? 'Túnel de Compartición por Internet desactivado.' : 'Internet Share Tunnel deactivated.';
  String get copyUrl => _locale == 'es' ? 'Copiar URL' : 'Copy URL';
  String get qrCode => _locale == 'es' ? 'Código QR' : 'QR Code';
  String get copyLink => _locale == 'es' ? 'Copiar Enlace' : 'Copy Link';

  String get noRecentFiles => _locale == 'es' ? 'Sin archivos recientes' : 'No recent files';
  String get successfullyDeleted => _locale == 'es' ? 'Elementos eliminados correctamente' : 'Successfully deleted items';

  String get folderIsEmpty => _locale == 'es' ? 'La carpeta está vacía' : 'Folder is empty';
  String get couldNotReadArchive => _locale == 'es' ? 'No se pudo leer el archivo' : 'Could not read archive';
  String extractedItem(String name, String dest) => _locale == 'es' ? 'Extraído $name a $dest' : 'Extracted $name to $dest';
  String copiedPhysicalItems(int n) => _locale == 'es' ? '$n elemento(s) copiado(s) al portapapeles' : '$n item(s) copied to clipboard';
  String addedSuccessfully(int n) => _locale == 'es' ? 'Agregado correctamente $n elemento(s) al archivo' : 'Successfully added $n item(s) into archive';
  String pastedCountItems(int n) => _locale == 'es' ? 'Pegado $n elemento(s) en el archivo' : 'Pasted $n item(s) into archive';

  String get createArchive => _locale == 'es' ? 'Crear Archivo' : 'Create Archive';
  String get archiveName => _locale == 'es' ? 'Nombre del Archivo' : 'Archive Name';
  String get archiveFormat => _locale == 'es' ? 'Formato del Archivo' : 'Archive Format';
  String get passwordOptional => _locale == 'es' ? 'Contraseña (Opcional)' : 'Password (Optional)';
  String get splitVolumeSize => _locale == 'es' ? 'Tamaño de Volumen Dividido en MB (Opcional)' : 'Split Volume Size in MB (Optional)';
  String get leaveEmptyForSingle => _locale == 'es' ? 'Dejar vacío para archivo único' : 'Leave empty for single archive';
  String get createSeparateArchive => _locale == 'es' ? 'Crear archivo separado para cada archivo' : 'Create separate archive for each file';
  String createArchiveFailed(String e) => _locale == 'es' ? 'Error al crear archivo: $e' : 'Failed to create archive: $e';

  String get extractToFolder => _locale == 'es' ? 'Extraer a Carpeta' : 'Extract to Folder';
  String get passwordIfEncrypted => _locale == 'es' ? 'Contraseña (si está encriptado)' : 'Password (if encrypted)';

  String get cancelPaste => _locale == 'es' ? 'Cancelar Pegado' : 'Cancel Paste';
  String get renameFile => _locale == 'es' ? 'Renombrar Archivo' : 'Rename File';
  String get newFilename => _locale == 'es' ? 'Nuevo nombre de archivo' : 'New filename';

  String get namePattern => _locale == 'es' ? 'Patrón de Nombre' : 'Name Pattern';
  String get extensionLabel => _locale == 'es' ? 'Extensión' : 'Extension';
  String get padding => _locale == 'es' ? 'Relleno' : 'Padding';
  String get startNumber => _locale == 'es' ? 'Número de Inicio' : 'Start Number';
  String get findText => _locale == 'es' ? 'Buscar texto' : 'Find text';
  String get searchTerm => _locale == 'es' ? 'Término de búsqueda' : 'Search term';
  String get replacement => _locale == 'es' ? 'Reemplazo' : 'Replacement';
  String get originalName => _locale == 'es' ? 'Nombre original (%)' : 'Original name (%)';
  String get sequentialNumber => _locale == 'es' ? 'Número secuencial (#)' : 'Sequential number (#)';
  String get tripleSequentialNumber => _locale == 'es' ? 'Número secuencial triple (###)' : 'Triple sequential number (###)';
  String get fileNameWithoutExtension => _locale == 'es' ? 'Nombre de archivo sin extensión ({n})' : 'File name without extension ({n})';
  String get extensionWithDot => _locale == 'es' ? 'Extensión con punto ({de})' : 'Extension with dot ({de})';
  String get extensionWithoutDot => _locale == 'es' ? 'Extensión sin punto ({e})' : 'Extension without dot ({e})';
  String get fullNameWithExtension => _locale == 'es' ? 'Nombre completo con extensión ({N})' : 'Full name with extension ({N})';

  String get background => _locale == 'es' ? 'Fondo' : 'Background';
  String get cancelOperation => _locale == 'es' ? 'Cancelar Operación' : 'Cancel Operation';
  String get transferSpeed => _locale == 'es' ? 'Velocidad de Transferencia' : 'Transfer Speed';
  String get estTime => _locale == 'es' ? 'Tiempo Estimado' : 'Est. Time';
  String get dataProcessed => _locale == 'es' ? 'Datos Procesados' : 'Data Processed';

  String get showInLocation => _locale == 'es' ? 'Mostrar en ubicación' : 'Show in location';
  String get copySelected => _locale == 'es' ? 'Copiar Seleccionado' : 'Copy Selected';
  String get cutSelectedB => _locale == 'es' ? 'Cortar Seleccionado' : 'Cut Selected';
  String get archiveCompress => _locale == 'es' ? 'Comprimir (Archivo)' : 'Archive (Compress)';
  String get propertiesAndInfo => _locale == 'es' ? 'Propiedades e Información' : 'Properties & Info';
  String get deleteSelected => _locale == 'es' ? 'Eliminar Seleccionado' : 'Delete Selected';

  String get enterAbsolutePath => _locale == 'es' ? 'Ingresar ruta absoluta...' : 'Enter absolute path...';
  String pathNotFound(String path) => _locale == 'es' ? 'Ruta no encontrada: $path' : 'Path not found: $path';
  String copedPath(String path) => _locale == 'es' ? 'Copiado: $path' : 'Copied: $path';

  String get goToParentDirectory => _locale == 'es' ? 'Ir al Directorio Padre' : 'Go to Parent Directory';
  String get searchEllipsis => _locale == 'es' ? 'Buscar...' : 'Search...';

  String get useRootAccess => _locale == 'es' ? 'Usar Acceso Root (Superusuario)' : 'Use Root Access (Superuser)';
  String get grantShizukuAccess => _locale == 'es' ? 'Conceder Acceso Shizuku (Sin Root)' : 'Grant Shizuku Access (No Root)';
  String get howToSetupShizuku => _locale == 'es' ? '¿Cómo configurar Shizuku?' : 'How to setup Shizuku?';

  String get newTab => _locale == 'es' ? 'Nueva Pestaña' : 'New Tab';
  String get duplicateTab => _locale == 'es' ? 'Duplicar Pestaña' : 'Duplicate Tab';
  String get closeOtherTabs => _locale == 'es' ? 'Cerrar Otras Pestañas' : 'Close Other Tabs';
  String get closeTab => _locale == 'es' ? 'Cerrar Pestaña' : 'Close Tab';

  String get allFiles => _locale == 'es' ? 'Todos los Archivos' : 'All Files';
  String get documentsOnly => _locale == 'es' ? 'Solo Documentos' : 'Documents only';
  String get imagesOnly => _locale == 'es' ? 'Solo Imágenes' : 'Images only';
  String get audioOnly => _locale == 'es' ? 'Solo Audio' : 'Audio only';
  String get videosOnly => _locale == 'es' ? 'Solo Videos' : 'Videos only';
  String get archivesOnly => _locale == 'es' ? 'Solo Archivos' : 'Archives only';

  String get extractingBundle => _locale == 'es' ? 'Extrayendo paquete para instalación...' : 'Extracting package bundle for installation...';
  String get noInstallableApk => _locale == 'es' ? 'No se encontró APK instalable en el paquete' : 'No installable APK found in package bundle';
  String failedToExtractBundle(String e) => _locale == 'es' ? 'Error al extraer paquete: $e' : 'Failed to extract package bundle: $e';
  String get failedToTriggerInstaller => _locale == 'es' ? 'Error al iniciar instalador de APK dividido' : 'Failed to trigger split APK installer';

  String get sortBySize => _locale == 'es' ? 'Ordenar por Tamaño' : 'Sort by Size';
  String get sortAlphabetically => _locale == 'es' ? 'Ordenar Alfabéticamente' : 'Sort Alphabetically';
  String get rescanStorage => _locale == 'es' ? 'Reescanear Almacenamiento' : 'Rescan Storage';
  String get selectAll_ => _locale == 'es' ? 'Seleccionar Todo' : 'Select All';
  String get refreshList => _locale == 'es' ? 'Actualizar Lista' : 'Refresh List';

  String get uninstallAppsTitle => _locale == 'es' ? 'Desinstalar Aplicaciones' : 'Uninstall Apps';
  String confirmUninstallApps(int n) => _locale == 'es' ? '¿Estás seguro de que quieres desinstalar $n aplicación(es) seleccionada(s)?' : 'Are you sure you want to uninstall $n selected app(s)?';
  String get backingUpApps => _locale == 'es' ? 'Respaldando aplicaciones seleccionadas...' : 'Backing up selected applications...';
  String backedUpApps(int n) => _locale == 'es' ? 'Respaldado correctamente $n aplicación(es) en NFile/Backups/Apps/' : 'Successfully backed up $n app(s) to NFile/Backups/Apps/';
  String failedToBackupApps(String e) => _locale == 'es' ? 'Error al respaldar algunas aplicaciones: $e' : 'Failed to back up some apps: $e';

  String get launchApplication => _locale == 'es' ? 'Iniciar Aplicación' : 'Launch Application';
  String get systemSettingsDetails => _locale == 'es' ? 'Ajustes del Sistema / Detalles' : 'System Settings / Details';
  String get backUpApk => _locale == 'es' ? 'Respaldar APK' : 'Back Up APK';
  String get backingUpApk => _locale == 'es' ? 'Respaldando APK...' : 'Backing up APK...';
  String get shareApkFile => _locale == 'es' ? 'Compartir Archivo APK' : 'Share APK File';
  String get uninstallApplication => _locale == 'es' ? 'Desinstalar Aplicación' : 'Uninstall Application';
  String get restoreInstallApp => _locale == 'es' ? 'Restaurar / Instalar App' : 'Restore / Install App';
  String get shareBackupFile => _locale == 'es' ? 'Compartir Archivo de Respaldo' : 'Share Backup File';
  String get deleteBackupFile => _locale == 'es' ? 'Eliminar Archivo de Respaldo' : 'Delete Backup File';

  String get newestFirst => _locale == 'es' ? 'Más Reciente Primero' : 'Newest First';
  String get oldestFirst => _locale == 'es' ? 'Más Antiguo Primero' : 'Oldest First';
  String get dateWise => _locale == 'es' ? 'Por Fecha' : 'Date Wise';
  String get newestFirstGrouped => _locale == 'es' ? 'Más Reciente Primero (Agrupado por mes)' : 'Newest First (Grouped per month)';
  String get oldestFirstGrouped => _locale == 'es' ? 'Más Antiguo Primero (Agrupado por mes)' : 'Oldest First (Grouped per month)';
  String get sizeLargeFirst => _locale == 'es' ? 'Tamaño (Grande Primero)' : 'Size (Large First)';
  String get sizeSmallFirst => _locale == 'es' ? 'Tamaño (Pequeño Primero)' : 'Size (Small First)';

  String get lockOption => _locale == 'es' ? 'Opción de Bloqueo' : 'Lock Option';
  String get secureImport => _locale == 'es' ? 'Importación Segura (Sandbox)' : 'Secure Import (Sandbox)';
  String get inPlaceScramble => _locale == 'es' ? 'Codificación en Sitio (Rápido)' : 'In-Place Scramble (Fast)';
  String get scramblingAndProtecting => _locale == 'es' ? 'Codificando y Protegiendo...' : 'Scrambling & Protecting...';
  String get restored => _locale == 'es' ? 'Restaurado' : 'Restored';
  String failedToRestoreFile(String e) => _locale == 'es' ? 'Error al restaurar archivo: $e' : 'Failed to restore file: $e';
  String get fileDeletedPermanently => _locale == 'es' ? 'Archivo eliminado permanentemente.' : 'File deleted permanently.';
  String failedToDeleteFile(String e) => _locale == 'es' ? 'Error al eliminar archivo: $e' : 'Failed to delete file: $e';
  String get decryptingSecurely => _locale == 'es' ? 'Descifrando de forma segura...' : 'Decrypting securely...';
  String failedToDecrypt(String e) => _locale == 'es' ? 'Error al descifrar y abrir elemento: $e' : 'Failed to decrypt and open item: $e';
  String get securityDetails => _locale == 'es' ? 'Detalles de Seguridad' : 'Security Details';
  String errorLoadingVault(String e) => _locale == 'es' ? 'Error al cargar bóveda: $e' : 'Error loading vault: $e';
  String get restoreUnhide => _locale == 'es' ? 'Restaurar (Mostrar)' : 'Restore (Unhide)';
  String get details => _locale == 'es' ? 'Detalles' : 'Details';
  String get searchScrambledFiles => _locale == 'es' ? 'Buscar archivos codificados...' : 'Search scrambled files...';
  String get permanentlyDeleteQuestion => _locale == 'es' ? '¿Estás seguro de que quieres eliminar permanentemente ' : 'Are you sure you want to permanently delete ';
  String get clearAll => _locale == 'es' ? 'Limpiar Todo' : 'Clear All';
  String get backspace => _locale == 'es' ? 'Retroceso' : 'Backspace';

  String get playbackSpeed => _locale == 'es' ? 'Velocidad de Reproducción' : 'Playback Speed';
  String get lockControls => _locale == 'es' ? 'Bloquear Controles' : 'Lock Controls';
  String get repeatMode => _locale == 'es' ? 'Modo Repetición' : 'Repeat Mode';
  String get copyUrlTooltip => _locale == 'es' ? 'Copiar URL' : 'Copy URL';
  String get mediaPathCopied => _locale == 'es' ? 'Ruta del medio copiada al portapapeles.' : 'Media path copied to clipboard.';
  String get volume => _locale == 'es' ? 'Volumen' : 'Volume';
  String get brightness => _locale == 'es' ? 'Brillo' : 'Brightness';

  String get sortOptions => _locale == 'es' ? 'Opciones de Orden' : 'Sort Options';

  String get soundFX => _locale == 'es' ? 'Efectos de Sonido' : 'Sound FX';
  String get lyrics => _locale == 'es' ? 'Letras' : 'Lyrics';
  String get sleepTimer => _locale == 'es' ? 'Temporizador de Sueño' : 'Sleep Timer';
  String get playingQueue => _locale == 'es' ? 'Cola de Reproducción' : 'Playing Queue';
  String sleepTimerSet(int mins) => _locale == 'es' ? 'Temporizador de sueño configurado para $mins minutos.' : 'Sleep timer set for $mins minutes.';
  String mins(int m) => _locale == 'es' ? '$m Minutos' : '$m Minutes';
  String get soundAndSpeedFX => _locale == 'es' ? 'Efectos de Sonido y Velocidad' : 'Sound & Speed FX';
  String get pitchAdjustment => _locale == 'es' ? 'Ajuste de Tono' : 'Pitch Adjustment';
  String get resetToDefault => _locale == 'es' ? 'Restablecer a Predeterminado' : 'Reset to Default';
  String get backgroundPlaybackStopped => _locale == 'es' ? 'Reproducción en segundo plano detenida' : 'Background playback stopped';
  String get backgroundPlaybackEnabled => _locale == 'es' ? 'Reproducción en segundo plano habilitada' : 'Background playback enabled';
  String get viewSynchronizedLyrics => _locale == 'es' ? 'Ver Letras Sincronizadas' : 'View Synchronized Lyrics';
  String get soundFXAndEqualizer => _locale == 'es' ? 'Efectos de Sonido y Ecualizador' : 'Sound FX & Equalizer';
  String get setSleepTimer => _locale == 'es' ? 'Configurar Temporizador' : 'Set Sleep Timer';
  String get audioFileInfo => _locale == 'es' ? 'Información del Archivo de Audio' : 'Audio File Info';
  String get lyricsLoaded => _locale == 'es' ? 'Letras cargadas correctamente' : 'Lyrics loaded successfully';
  String get loadLrcFile => _locale == 'es' ? 'Cargar Archivo LRC' : 'Load LRC File';

  String get noDataToExport => _locale == 'es' ? 'No hay datos para exportar.' : 'No data to export.';
  String exportedTo(String path) => _locale == 'es' ? 'Exportado correctamente a $path' : 'Successfully exported to $path';
  String exportFailed(String e) => _locale == 'es' ? 'Exportación fallida: $e' : 'Export failed: $e';
  String get noTablesFound => _locale == 'es' ? 'No se encontraron tablas en esta base de datos.' : 'No tables found in this database.';
  String get exportTableToCsv => _locale == 'es' ? 'Exportar Tabla a CSV' : 'Export Table to CSV';
  String get searchRows => _locale == 'es' ? 'Buscar filas...' : 'Search rows...';
  String get noRowsFound => _locale == 'es' ? 'No se encontraron filas' : 'No rows found';
  String get noSchemaLoaded => _locale == 'es' ? 'No se cargaron detalles del esquema.' : 'No schema details loaded.';
  String get sqlEditor => _locale == 'es' ? 'Editor SQL' : 'SQL Editor';
  String get selectTemplate => _locale == 'es' ? 'Plantilla SELECT' : 'SELECT template';
  String get enterSelectQuery => _locale == 'es' ? 'Ingresar consulta SELECT aquí...' : 'Enter SELECT query here...';
  String get exportResultsToCsv => _locale == 'es' ? 'Exportar Resultados a CSV' : 'Export Results to CSV';
  String get runQuery => _locale == 'es' ? 'Ejecutar Consulta' : 'Run Query';
  String typeLabel(String type) => _locale == 'es' ? 'Tipo: $type' : 'Type: $type';
  String defaultLabel(String val) => _locale == 'es' ? 'Predeterminado: $val' : 'Default: $val';

  String errorCreatingFolder(String e) => _locale == 'es' ? 'Error al crear carpeta: $e' : 'Error creating folder: $e';
  String get createFolder => _locale == 'es' ? 'Crear Carpeta' : 'Create Folder';
  String get selectStorage => _locale == 'es' ? 'Seleccionar Almacenamiento' : 'Select Storage';
  String get clearSelection => _locale == 'es' ? 'Limpiar Selección' : 'Clear Selection';
  String pinSelected(int n) => _locale == 'es' ? 'Fijar Seleccionado ($n)' : 'Pin Selected ($n)';
  String get pinThisFolder => _locale == 'es' ? 'Fijar Esta Carpeta' : 'Pin This Folder';
  String addSelected(int n) => _locale == 'es' ? 'Agregar Seleccionado ($n)' : 'Add Selected ($n)';

  String get noPhysicalFilesToRename => _locale == 'es' ? 'No se encontraron archivos físicos para renombrar' : 'No physical files found to rename';
  String copedToClipboardWithName(String name) => _locale == 'es' ? 'Copiado $name al portapapeles' : 'Copied $name to clipboard';
  String cutToClipboardWithName(String name) => _locale == 'es' ? 'Cortado $name al portapapeles' : 'Cut $name to clipboard';
  String deletedItem(String name) => _locale == 'es' ? 'Eliminado $name' : 'Deleted $name';
  String noItemsFound(String type) => _locale == 'es' ? 'No se encontraron $type' : 'No $type found';

  String get calculatingSizes => _locale == 'es' ? 'Calculando tamaños...' : 'Calculating sizes...';
  String get contains => _locale == 'es' ? 'Contiene' : 'Contains';
  String get modified => _locale == 'es' ? 'Modificado' : 'Modified';
  String get permissions => _locale == 'es' ? 'Permisos' : 'Permissions';
  String get itemsSelected => _locale == 'es' ? 'Elementos Seleccionados' : 'Items Selected';
  String get totalSize => _locale == 'es' ? 'Tamaño Total' : 'Total Size';
  String get selectedPaths => _locale == 'es' ? 'Rutas Seleccionadas:' : 'Selected Paths:';

  String get ftpServerNotification => _locale == 'es' ? 'Servidor FTP NFile' : 'NFile FTP Server';
  String ftpRunningAt(String ip, int port) => _locale == 'es' ? 'Ejecutándose en ftp://$ip:$port' : 'Running at ftp://$ip:$port';
  String get ftpServerChannelName => _locale == 'es' ? 'Servidor FTP' : 'FTP Server';
  String get ftpServerChannelDesc => _locale == 'es' ? 'Muestra el estado del Servidor FTP en segundo plano' : 'Displays status of the background FTP Server';
  String get nfileAudioPlayer => _locale == 'es' ? 'Reproductor de Audio NFile' : 'NFile Audio Player';
  String get nfileArchiveOperations => _locale == 'es' ? 'Operaciones de Archivo NFile' : 'NFile Archive Operations';
  String get archiveProgressDesc => _locale == 'es' ? 'Muestra el progreso de compresión y extracción de archivos' : 'Shows progress of file compression and extraction';
  String get nfileStorage => _locale == 'es' ? 'Almacenamiento NFile' : 'NFile Storage';
  String get internalStorageViaNFile => _locale == 'es' ? 'Almacenamiento interno vía NFile' : 'Internal storage via NFile';
  String get webSharingServer => _locale == 'es' ? 'Servidor de Compartición Web' : 'Web Sharing Server';
  String get webSharingServerDesc => _locale == 'es' ? 'Muestra el estado del Servidor de Compartición Web en segundo plano' : 'Displays status of the background Web Sharing Server';
  String get nfileInternetWebShare => _locale == 'es' ? 'NFile Compartición Web por Internet' : 'NFile Internet Web Share';
  String get nfileLocalWebShare => _locale == 'es' ? 'NFile Compartición Web Local' : 'NFile Local Web Share';
  String runningAt(String url) => _locale == 'es' ? 'Ejecutándose en $url' : 'Running at $url';

  String get nfileVersion => 'NFile v1.0.43';
}

class _AppStringsDelegate extends LocalizationsDelegate<AppStrings> {
  const _AppStringsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<AppStrings> load(Locale locale) {
    AppStrings._locale = locale.languageCode;
    AppStrings._instance = AppStrings._();
    return Future.value(AppStrings._instance);
  }

  @override
  bool shouldReload(_AppStringsDelegate old) => false;
}
