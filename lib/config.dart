part of pdftron;

class Config {
  var _disabledElements;
  var _disabledTools;
  var _multiTabEnabled;
  var _customHeaders;
  var _longPressMenuEnabled;
  var _longPressMenuItems;
  var _overrideLongPressMenuBehavior;
  var _hideAnnotationMenu;
  var _annotationMenuItems;
  var _overrideAnnotationMenuBehavior;
  var _autoSaveEnabled;
  var _pageChangeOnTap;
  var _showSavedSignatures;
  var _useStylusAsPen;
  var _signSignatureFieldWithStamps;
  var _selectAnnotationAfterCreation;
  var _pageIndicatorEnabled;
  var _followSystemDarkMode;
  var _annotationToolbars;
  var _hideDefaultAnnotationToolbars;
  var _hideAnnotationToolbarSwitcher;
  var _hideTopToolbars;
  var _hideTopAppNavBar;
  var _hideBottomToolbar;
  var _showLeadingNavButton;
  var _readOnly;
  var _thumbnailViewEditingEnabled;
  var _annotationAuthor;
  var _continuousAnnotationEditing;
  var _tabTitle;

  Config();

  set disabledElements(List value) => _disabledElements = value;
  set disabledTools(List value) => _disabledTools = value;
  set multiTabEnabled(bool value) => _multiTabEnabled = value;
  set customHeaders(Map<String, String> value) => _customHeaders = value;
  set longPressMenuEnabled(bool value) => _longPressMenuEnabled = value;
  set longPressMenuItems(List value) => _longPressMenuItems = value;
  set overrideLongPressMenuBehavior(List value) =>
      _overrideLongPressMenuBehavior = value;
  set hideAnnotationMenu(bool value) => _hideAnnotationMenu = value;
  set annotationMenuItems(List value) => _annotationMenuItems = value;
  set overrideAnnotationMenuBehavior(List value) =>
      _overrideAnnotationMenuBehavior = value;
  set autoSaveEnabled(bool value) => _autoSaveEnabled = value;
  set pageChangeOnTap(bool value) => _pageChangeOnTap = value;
  set showSavedSignatures(bool value) => _showSavedSignatures = value;
  set useStylusAsPen(bool value) => _useStylusAsPen;
  set signSignatureFieldWithStamps(bool value) =>
      _signSignatureFieldWithStamps = value;
  set selectAnnotationAfterCreation(bool value) =>
      _selectAnnotationAfterCreation = value;
  set pageIndicatorEnabled(bool value) => _pageIndicatorEnabled = value;
  set followSystemDarkMode(bool value) => _followSystemDarkMode = value;
  set annotationToolbars(List value) => _annotationToolbars = value;
  set hideDefaultAnnotationToolbars(List value) =>
      _hideDefaultAnnotationToolbars = value;
  set hideAnnotationToolbarSwitcher(bool value) =>
      _hideAnnotationToolbarSwitcher = value;
  set hideTopToolbars(bool value) => _hideTopToolbars = value;
  set hideTopAppNavBar(bool value) => _hideTopAppNavBar = value;
  set hideBottomToolbar(bool value) => _hideBottomToolbar = value;
  set showLeadingNavButton(bool value) => _showLeadingNavButton = value;
  set readOnly(bool value) => _readOnly = value;
  set thumbnailViewEditingEnabled(bool value) =>
      _thumbnailViewEditingEnabled = value;
  set annotationAuthor(String value) => _annotationAuthor = value;
  set continuousAnnotationEditing(bool value) =>
      _continuousAnnotationEditing = value;
  set tabTitle(String value) => _tabTitle = value;

  Config.fromJson(Map<String, dynamic> json)
      : _disabledElements = json['disabledElements'],
        _disabledTools = json['disabledTools'],
        _multiTabEnabled = json['multiTabEnabled'],
        _customHeaders = json['customHeaders'],
        _longPressMenuEnabled = json['longPressMenuEnabled'],
        _longPressMenuItems = json['longPressMenuItems'],
        _overrideLongPressMenuBehavior = json['overrideLongPressMenuBehavior'],
        _hideAnnotationMenu = json['hideAnnotationMenu'],
        _annotationMenuItems = json['annotationMenuItems'],
        _overrideAnnotationMenuBehavior =
            json['overrideAnnotationMenuBehavior'],
        _autoSaveEnabled = json['autoSaveEnabled'],
        _pageChangeOnTap = json['pageChangeOnTap'],
        _showSavedSignatures = json['showSavedSignatures'],
        _useStylusAsPen = json['useStylusAsPen'],
        _signSignatureFieldWithStamps = json['signSignatureFieldWithStamps'],
        _selectAnnotationAfterCreation = json['selectAnnotationAfterCreation'],
        _pageIndicatorEnabled = json['pageIndicatorEnabled'],
        _followSystemDarkMode = json['followSystemDarkMode'],
        _annotationToolbars = json['annotationToolbars'],
        _hideDefaultAnnotationToolbars = json['hideDefaultAnnotationToolbars'],
        _hideAnnotationToolbarSwitcher = json['hideAnnotationToolbarSwitcher'],
        _hideTopToolbars = json['hideTopToolbars'],
        _hideTopAppNavBar = json['hideTopAppNavBar'],
        _hideBottomToolbar = json['hideBottomToolbar'],
        _showLeadingNavButton = json['showLeadingNavButton'],
        _readOnly = json['readOnly'],
        _thumbnailViewEditingEnabled = json['thumbnailViewEditingEnabled'],
        _annotationAuthor = json['annotationAuthor'],
        _continuousAnnotationEditing = json['continuousAnnotationEditing'],
        _tabTitle = json['tabTitle'];

  Map<String, dynamic> toJson() => {
        'disabledElements': _disabledElements,
        'disabledTools': _disabledTools,
        'multiTabEnabled': _multiTabEnabled,
        'customHeaders': _customHeaders,
        'longPressMenuEnabled': _longPressMenuEnabled,
        'longPressMenuItems': _longPressMenuItems,
        'overrideLongPressMenuBehavior': _overrideLongPressMenuBehavior,
        'hideAnnotationMenu': _hideAnnotationMenu,
        'annotationMenuItems': _annotationMenuItems,
        'overrideAnnotationMenuBehavior': _overrideAnnotationMenuBehavior,
        'autoSaveEnabled': _autoSaveEnabled,
        'pageChangeOnTap': _pageChangeOnTap,
        'showSavedSignatures': _showSavedSignatures,
        'useStylusAsPen': _useStylusAsPen,
        'signSignatureFieldWithStamps': _signSignatureFieldWithStamps,
        'selectAnnotationAfterCreation': _selectAnnotationAfterCreation,
        'pageIndicatorEnabled': _pageIndicatorEnabled,
        'followSystemDarkMode': _followSystemDarkMode,
        'annotationToolbars': _annotationToolbars,
        'hideDefaultAnnotationToolbars': _hideDefaultAnnotationToolbars,
        'hideAnnotationToolbarSwitcher': _hideAnnotationToolbarSwitcher,
        'hideTopToolbars': _hideTopToolbars,
        'hideTopAppNavBar': _hideTopAppNavBar,
        'hideBottomToolbar': _hideBottomToolbar,
        'showLeadingNavButton': _showLeadingNavButton,
        'readOnly': _readOnly,
        'thumbnailViewEditingEnabled': _thumbnailViewEditingEnabled,
        'annotationAuthor': _annotationAuthor,
        'continuousAnnotationEditing': _continuousAnnotationEditing,
        'tabTitle': _tabTitle,
      };
}
