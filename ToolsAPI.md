## Description
The ToolsAPI unit contains interfaces and types (to work with these interfaces) that you can access by querying the [BorlandIDEServices](BorlandIDEServices) variable when you add the ToolsAPI unit to your package/unit.

It allows you to [extend the RAD Studio IDE](http://docwiki.embarcadero.com/RADStudio/en/Extending_the_IDE_Using_the_Tools_API).

| Package | designide |
| ------------- | ------------- |

## Interfaces
| Interface name  | Inherits from |
| ------------- | ------------- |
| [INTAAddInOptions](INTAAddInOptions) | interface([IUnknown](IInterface)) | 
| [INTAComponent](INTAComponent) | interface([IUnknown](IInterface)) | 
| [INTACustomDockableForm](INTACustomDockableForm) | interface([IUnknown](IInterface)) | 
| [INTACustomDrawCodeInsightViewer](INTACustomDrawCodeInsightViewer) | interface([IUnknown](IInterface)) | 
| [INTACustomDrawMessage](INTACustomDrawMessage) | interface([IOTACustomMessage](IOTACustomMessage)) | 
| [INTACustomEditorSubView](INTACustomEditorSubView) | interface([IInterface](IInterface)) | 
| [INTACustomEditorSubView190](INTACustomEditorSubView190) | interface([INTACustomEditorSubView](INTACustomEditorSubView)) | 
| [INTACustomEditorView](INTACustomEditorView) | interface([IInterface](IInterface)) | 
| [INTACustomEditorView150](INTACustomEditorView150) | interface([INTACustomEditorView](INTACustomEditorView)) | 
| [INTACustomEditorViewState](INTACustomEditorViewState) | interface([IInterface](IInterface)) | 
| [INTACustomEditorViewStatusPanel](INTACustomEditorViewStatusPanel) | interface([IInterface](IInterface)) | 
| [INTACustomizeToolbarNotifier](INTACustomizeToolbarNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [INTACustomizeToolbarNotifier190](INTACustomizeToolbarNotifier190) | interface([INTACustomizeToolbarNotifier](INTACustomizeToolbarNotifier)) | 
| [INTAEditorServices](INTAEditorServices) | interface([IUnknown](IInterface)) | 
| [INTAEditorViewServices](INTAEditorViewServices) | interface([IInterface](IInterface)) | 
| [INTAEditServicesNotifier](INTAEditServicesNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [INTAEditViewNotifier](INTAEditViewNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [INTAEditWindow](INTAEditWindow) | interface([IUnknown](IInterface)) | 
| [INTAEnvironmentOptionsServices](INTAEnvironmentOptionsServices) | interface([IUnknown](IInterface)) | 
| [INTAFormEditor](INTAFormEditor) | interface([IUnknown](IInterface)) | 
| [INTAIDEInsightItem](INTAIDEInsightItem) | interface([IInterface](IInterface)) | 
| [INTAIDEInsightService180](INTAIDEInsightService180) | interface([IInterface](IInterface)) | 
| [INTAIDEInsightService](INTAIDEInsightService) | interface([INTAIDEInsightService180](INTAIDEInsightService180)) | 
| [INTAIDEThemingServicesNotifier](INTAIDEThemingServicesNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [INTAMessageNotifier](INTAMessageNotifier) | interface([IOTAMessageNotifier](IOTAMessageNotifier)) | 
| [INTAPersonalityDevelopers](INTAPersonalityDevelopers) | interface([IInterface](IInterface)) | 
| [INTAProcess150](INTAProcess150) | interface([IInterface](IInterface)) | 
| [INTAProcess](INTAProcess) | interface([INTAProcess150](INTAProcess150)) | 
| [INTAProjectMenuCreatorNotifier](INTAProjectMenuCreatorNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [INTAReadToolbarNotifier](INTAReadToolbarNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [INTAServices](INTAServices) | interface([INTAServices120](INTAServices120)) | 
| [INTAServices40](INTAServices40) | interface([IUnknown](IInterface)) | 
| [INTAServices70](INTAServices70) | interface([INTAServices40](INTAServices40)) | 
| [INTAServices90](INTAServices90) | interface([INTAServices70](INTAServices70)) | 
| [INTAServices120](INTAServices120) | interface([INTAServices90](INTAServices90)) | 
| [INTAStrings](INTAStrings) | interface([IOTAStrings](IOTAStrings)) | 
| [INTAThread](INTAThread) | interface([IInterface](IInterface)) | 
| [INTAToDoItem](INTAToDoItem) | interface([IUnknown](IInterface)) | 
| [INTAToolbarStreamNotifier](INTAToolbarStreamNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [INTAToolbarStreamNotifier190](INTAToolbarStreamNotifier190) | interface([INTAToolbarStreamNotifier](INTAToolbarStreamNotifier)) | 
| [INTAWriteToolbarNotifier](INTAWriteToolbarNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAAboutBoxServices120](IOTAAboutBoxServices120) | interface([IInterface](IInterface)) | 
| [IOTAAboutBoxServices](IOTAAboutBoxServices) | interface([IOTAAboutBoxServices120](IOTAAboutBoxServices120)) | 
| [IOTAActionServices](IOTAActionServices) | interface([IUnknown](IInterface)) | 
| [IOTAAdditionalFilesModuleCreator](IOTAAdditionalFilesModuleCreator) | interface([IOTAModuleCreator](IOTAModuleCreator)) | 
| [IOTAAdditionalModuleFiles](IOTAAdditionalModuleFiles) | interface([IInterface](IInterface)) | 
| [IOTAAddressBreakpoint](IOTAAddressBreakpoint) | interface([IOTABreakpoint](IOTABreakpoint)) | 
| [IOTAAlignable](IOTAAlignable) | interface([IInterface](IInterface))| 
| [IOTAAlignableState](IOTAAlignableState) | interface([IInterface](IInterface))| 
| [IOTAAsyncCodeInsightManager](IOTAAsyncCodeInsightManager) | interface([IInterface](IInterface))| 
| [IOTABaseCustomDifferenceViewer](IOTABaseCustomDifferenceViewer) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTABreakpoint40](IOTABreakpoint40) | interface([IUnknown](IInterface)) | 
| [IOTABreakpoint50](IOTABreakpoint50) | interface([IOTABreakpoint40](IOTABreakpoint40)) | 
| [IOTABreakpoint80](IOTABreakpoint80) | interface([IOTABreakpoint50](IOTABreakpoint50)) | 
| [IOTABreakpoint120](IOTABreakpoint120) | interface([IOTABreakpoint80](IOTABreakpoint80)) | 
| [IOTABreakpoint](IOTABreakpoint) | interface([IOTABreakpoint120](IOTABreakpoint120)) | 
| [IOTABreakpointNotifier](IOTABreakpointNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTABufferOptions60](IOTABufferOptions60) | interface([IUnknown](IInterface)) | 
| [IOTABufferOptions70](IOTABufferOptions70) | interface([IOTABufferOptions60](IOTABufferOptions60)) | 
| [IOTABufferOptions](IOTABufferOptions) | interface([IOTABufferOptions70](IOTABufferOptions70)) | 
| [IOTABuildConfiguration140](IOTABuildConfiguration140) | interface([IUnknown](IInterface)) | 
| [IOTABuildConfiguration150](IOTABuildConfiguration150) | interface([IOTABuildConfiguration140](IOTABuildConfiguration140)) | 
| [IOTABuildConfiguration](IOTABuildConfiguration) | interface([IOTABuildConfiguration150](IOTABuildConfiguration150)) | 
| [IOTABuildEvent](IOTABuildEvent) | interface([IInterface](IInterface)) | 
| [IOTABuildEventProvider](IOTABuildEventProvider) | interface([IInterface](IInterface)) | 
| [IOTACodeBrowsePreview](IOTACodeBrowsePreview) | interface([IDispatch](IDispatch)) | 
| [IOTACodeInsightCustomParameterHighlight](IOTACodeInsightCustomParameterHighlight) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightManager100](IOTACodeInsightManager100) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightManager90](IOTACodeInsightManager90) | interface([IOTACodeInsightManager100](IOTACodeInsightManager100)) | 
| [IOTACodeInsightManager](IOTACodeInsightManager) | interface([IOTACodeInsightManager100](IOTACodeInsightManager100)) | 
| [IOTACodeInsightManagerEnvOptions](IOTACodeInsightManagerEnvOptions) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightParameterList](IOTACodeInsightParameterList) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightParameterList100](IOTACodeInsightParameterList100) | interface([IOTACodeInsightParameterList](IOTACodeInsightParameterList)) | 
| [IOTACodeInsightParamQuery](IOTACodeInsightParamQuery) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightSelection](IOTACodeInsightSelection) | interface([IInterface](IInterface)) | 
| [IOTACodeInsightServices60](IOTACodeInsightServices60) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightServices270](IOTACodeInsightServices270) | interface([IOTACodeInsightServices60](IOTACodeInsightServices60)) | 
| [IOTACodeInsightServices](IOTACodeInsightServices) | interface([IOTACodeInsightServices270](IOTACodeInsightServices270)) | 
| [IOTACodeInsightSymbolList](IOTACodeInsightSymbolList) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightSymbolList80](IOTACodeInsightSymbolList80) | interface([IOTACodeInsightSymbolList](IOTACodeInsightSymbolList)) | 
| [IOTACodeInsightUIOverride](IOTACodeInsightUIOverride) | interface([IInterface](IInterface)) |
| [IOTACodeInsightViewer90](IOTACodeInsightViewer90) | interface([IUnknown](IInterface)) | 
| [IOTACodeInsightViewer](IOTACodeInsightViewer) | interface([IOTACodeInsightViewer90](IOTACodeInsightViewer90)) | 
| [IOTACompileNotifier](IOTACompileNotifier) | interface([IInterface](IInterface)) | 
| [IOTACompileServices](IOTACompileServices) | interface([IInterface](IInterface)) | 
| [IOTAComponent](IOTAComponent) | interface([IUnknown](IInterface)) | 
| [IOTACreateOrderable](IOTACreateOrderable) | interface([IInterface](IInterface)) | 
| [IOTACreator](IOTACreator) | interface([IUnknown](IInterface)) | 
| [IOTACustomDifferenceManager](IOTACustomDifferenceManager) | interface([IInterface](IInterface)) | 
| [IOTACustomDifferenceViewer](IOTACustomDifferenceViewer) | interface([IOTABaseCustomDifferenceViewer](IOTABaseCustomDifferenceViewer)) | 
| [IOTACustomEditView](IOTACustomEditView) | interface([IInterface](IInterface)) | 
| [IOTACustomMergeManager](IOTACustomMergeManager) | interface([IInterface](IInterface)) | 
| [IOTACustomMergeViewer](IOTACustomMergeViewer) | interface([IOTABaseCustomDifferenceViewer](IOTABaseCustomDifferenceViewer)) | 
| [IOTACustomMessage](IOTACustomMessage) | interface([IUnknown](IInterface)) | 
| [IOTACustomMessage50](IOTACustomMessage50) | interface([IOTACustomMessage](IOTACustomMessage)) | 
| [IOTACustomMessage100](IOTACustomMessage100) | interface([IOTACustomMessage50](IOTACustomMessage50)) | 
| [IOTACustomOptions](IOTACustomOptions) | interface([IUnknown](IInterface)) | 
| [IOTADebuggerNotifier](IOTADebuggerNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTADebuggerNotifier90](IOTADebuggerNotifier90) | interface([IOTADebuggerNotifier](IOTADebuggerNotifier)) | 
| [IOTADebuggerNotifier100](IOTADebuggerNotifier100) | interface([IOTADebuggerNotifier90](IOTADebuggerNotifier90)) | 
| [IOTADebuggerNotifier110](IOTADebuggerNotifier110) | interface([IOTADebuggerNotifier100](IOTADebuggerNotifier100)) | 
| [IOTADebuggerServices60](IOTADebuggerServices60) | interface([IUnknown](IInterface)) | 
| [IOTADebuggerServices90](IOTADebuggerServices90) | interface([IOTADebuggerServices60](IOTADebuggerServices60)) | 
| [IOTADebuggerServices120](IOTADebuggerServices120) | interface([IOTADebuggerServices90](IOTADebuggerServices90)) | 
| [IOTADebuggerServices150](IOTADebuggerServices150) | interface([IOTADebuggerServices120](IOTADebuggerServices120)) | 
| [IOTADebuggerServices](IOTADebuggerServices) | interface([IOTADebuggerServices150](IOTADebuggerServices150)) | 
| [IOTADebuggerVisualizer](IOTADebuggerVisualizer) | interface([IInterface](IInterface)) | 
| [IOTADebuggerVisualizer250](IOTADebuggerVisualizer250) | interface([IOTADebuggerVisualizer](IOTADebuggerVisualizer)) | 
| [IOTADebuggerVisualizerExternalViewer](IOTADebuggerVisualizerExternalViewer) | interface([IOTADebuggerVisualizer](IOTADebuggerVisualizer)) | 
| [IOTADebuggerVisualizerExternalViewerUpdater](IOTADebuggerVisualizerExternalViewerUpdater) | interface([IInterface](IInterface)) | 
| [IOTADebuggerVisualizerValueReplacer](IOTADebuggerVisualizerValueReplacer) | interface([IOTADebuggerVisualizer](IOTADebuggerVisualizer)) | 
| [IOTADefaultPreviewTrait](IOTADefaultPreviewTrait) | interface([IInterface](IInterface)) | 
| [IOTADesignerCommandNotifier](IOTADesignerCommandNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTADesignerCommandServices](IOTADesignerCommandServices) | interface([IInterface](IInterface)) | 
| [IOTAEditActions60](IOTAEditActions60) | interface([IUnknown](IInterface)) | 
| [IOTAEditActions100](IOTAEditActions100) | interface([IOTAEditActions60](IOTAEditActions60)) | 
| [IOTAEditActions](IOTAEditActions) | interface([IOTAEditActions100](IOTAEditActions100)) | 
| [IOTAEditBlock90](IOTAEditBlock90) | interface([IUnknown](IInterface)) | 
| [IOTAEditBlock](IOTAEditBlock) | interface([IOTAEditBlock90](IOTAEditBlock90)) | 
| [IOTAEditBuffer60](IOTAEditBuffer60) | interface([IOTASourceEditor](IOTASourceEditor)) | 
| [IOTAEditBuffer](IOTAEditBuffer) | interface([IOTAEditBuffer60](IOTAEditBuffer60)) | 
| [IOTAEditBufferIterator](IOTAEditBufferIterator) | interface([IUnknown](IInterface)) | 
| [IOTAEditLineNotifier](IOTAEditLineNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAEditLineTracker](IOTAEditLineTracker) | interface([IUnknown](IInterface)) | 
| [IOTAEditOptions60](IOTAEditOptions60) | interface([IUnknown](IInterface)) | 
| [IOTAEditOptions](IOTAEditOptions) | interface([IOTAEditOptions60](IOTAEditOptions60)) | 
| [IOTAEditor](IOTAEditor) | interface([IUnknown](IInterface)) | 
| [IOTAEditorColorSpeedSetting](IOTAEditorColorSpeedSetting) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAEditorContent](IOTAEditorContent) | interface([IInterface](IInterface)) | 
| [IOTAEditorExplorerPersonalityTrait](IOTAEditorExplorerPersonalityTrait) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAEditorNotifier](IOTAEditorNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAEditorServices60](IOTAEditorServices60) | interface([IUnknown](IInterface)) | 
| [IOTAEditorServices70](IOTAEditorServices70) | interface([IOTAEditorServices60](IOTAEditorServices60)) | 
| [IOTAEditorServices80](IOTAEditorServices80) | interface([IOTAEditorServices70](IOTAEditorServices70)) | 
| [IOTAEditorServices](IOTAEditorServices) | interface([IOTAEditorServices80](IOTAEditorServices80)) | 
| [IOTAEditorViewServices140](IOTAEditorViewServices140) | interface([IInterface](IInterface)) | 
| [IOTAEditorViewServices](IOTAEditorViewServices) | interface([IOTAEditorViewServices140](IOTAEditorViewServices140)) | 
| [IOTAEditPosition](IOTAEditPosition) | interface([IUnknown](IInterface)) | 
| [IOTAEditReader](IOTAEditReader) | interface([IUnknown](IInterface)) | 
| [IOTAEditView40](IOTAEditView40) | interface([IInterface](IInterface)) | 
| [IOTAEditView140](IOTAEditView140) | interface([IOTAEditView40](IOTAEditView40)) | 
| [IOTAEditView145](IOTAEditView145) | interface([IOTAEditView140](IOTAEditView140)) | 
| [IOTAEditView220](IOTAEditView220) | interface([IOTAEditView145](IOTAEditView145)) | 
| [IOTAEditView](IOTAEditView) | interface([IOTAEditView220](IOTAEditView220)) | 
| [IOTAEditWriter](IOTAEditWriter) | interface([IUnknown](IInterface)) | 
| [IOTAElideActions120](IOTAElideActions120) | interface([IUnknown](IInterface)) | 
| [IOTAElideActions150](IOTAElideActions150) | interface([IOTAElideActions120](IOTAElideActions120)) | 
| [IOTAElideActions](IOTAElideActions) | interface([IOTAElideActions150](IOTAElideActions150)) | 
| [IOTAElisionPreview](IOTAElisionPreview) | interface([IInterface](IInterface)) | 
| [IOTAEnvironmentOptions140](IOTAEnvironmentOptions140) | interface([IOTAOptions](IOTAOptions)) | 
| [IOTAEnvironmentOptions](IOTAEnvironmentOptions) | interface([IOTAEnvironmentOptions140](IOTAEnvironmentOptions140)) | 
| [IOTAFile](IOTAFile) | interface([IUnknown](IInterface)) | 
| [IOTAFileFilter](IOTAFileFilter) | interface([IInterface](IInterface)) | 
| [IOTAFileFilterByName](IOTAFileFilterByName) | interface([IOTAFileFilter](IOTAFileFilter)) | 
| [IOTAFileFilterServices](IOTAFileFilterServices) | interface([IInterface](IInterface)) | 
| [IOTAFileFilterWithCheckEncode](IOTAFileFilterWithCheckEncode) | interface([IOTAFileFilter](IOTAFileFilter)) | 
| [IOTAFileSystem](IOTAFileSystem) | interface([IInterface](IInterface)) | 
| [IOTAFileSystem80](IOTAFileSystem80) | interface([IOTAFileSystem](IOTAFileSystem)) | 
| [IOTAFormEditor](IOTAFormEditor) | interface([IOTAEditor](IOTAEditor)) | 
| [IOTAFormNotifier](IOTAFormNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAFormWizard](IOTAFormWizard) | interface([IOTARepositoryWizard](IOTARepositoryWizard)) | 
| [IOTAFormWizard100](IOTAFormWizard100) | interface([IOTAFormWizard](IOTAFormWizard)) | 
| [IOTAGalleryCategory](IOTAGalleryCategory) | interface([IInterface](IInterface)) | 
| [IOTAGalleryCategoryManager](IOTAGalleryCategoryManager) | interface([IInterface](IInterface)) | 
| [IOTAGetItService220](IOTAGetItService220) | interface([IInterface](IInterface)) | 
| [IOTAGetItService230](IOTAGetItService230) | interface([IOTAGetItService220](IOTAGetItService220)) | 
| [IOTAGetItService](IOTAGetItService) | interface([IOTAGetItService230](IOTAGetItService230)) | 
| [IOTAHelpInsight](IOTAHelpInsight) | interface([IDispatch](IDispatch)) | 
| [IOTAHelpServices](IOTAHelpServices) | interface([IDispatch](IDispatch)) | 
| [IOTAHelpTrait](IOTAHelpTrait) | interface([IDispatch](IDispatch)) | 
| [IOTAHighlighter](IOTAHighlighter) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAHighlighterPreview](IOTAHighlighterPreview) | interface([IInterface](IInterface)) | 
| [IOTAHighlightServices](IOTAHighlightServices) | interface([IInterface](IInterface)) | 
| [IOTAHistoryItem](IOTAHistoryItem) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAHistoryServices](IOTAHistoryServices) | interface([IInterface](IInterface)) | 
| [IOTAIDEInsightCategory](IOTAIDEInsightCategory) | interface([IInterface](IInterface)) | 
| [IOTAIDEInsightNotifier](IOTAIDEInsightNotifier) | interface([IInterface](IInterface)) | 
| [IOTAIDEInsightNotifier150](IOTAIDEInsightNotifier150) | interface([IInterface](IInterface)) | 
| [IOTAIDEInsightService](IOTAIDEInsightService) | interface([IInterface](IInterface)) | 
| [IOTAIDENotifier](IOTAIDENotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAIDENotifier50](IOTAIDENotifier50) | interface([IOTAIDENotifier](IOTAIDENotifier)) | 
| [IOTAIDENotifier80](IOTAIDENotifier80) | interface([IOTAIDENotifier50](IOTAIDENotifier50)) | 
| [IOTAIDEThemingServices250](IOTAIDEThemingServices250) | interface([IInterface](IInterface)) | 
| [IOTAIDEThemingServices260](IOTAIDEThemingServices260) | interface([IOTAIDEThemingServices250](IOTAIDEThemingServices250)) | 
| [IOTAIDEThemingServices](IOTAIDEThemingServices) | interface([IOTAIDEThemingServices260](IOTAIDEThemingServices260)) | 
| [IOTAInsertWideChar](IOTAInsertWideChar) | interface([IUnknown](IInterface)) | 
| [IOTAKeyBindingServices](IOTAKeyBindingServices) | interface([IUnknown](IInterface)) | 
| [IOTAKeyboardBinding](IOTAKeyboardBinding) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAKeyboardDiagnostics](IOTAKeyboardDiagnostics) | interface([IUnknown](IInterface)) | 
| [IOTAKeyboardServices](IOTAKeyboardServices) | interface([IUnknown](IInterface)) | 
| [IOTAKeyContext](IOTAKeyContext) | interface([IUnknown](IInterface)) | 
| [IOTALocalMenu](IOTALocalMenu) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAMenuContext](IOTAMenuContext) | interface([IInterface](IInterface)) | 
| [IOTAMenuWizard](IOTAMenuWizard) | interface([IOTAWizard](IOTAWizard)) | 
| [IOTAMessageGroup](IOTAMessageGroup) | interface([IOTAMessageGroup90](IOTAMessageGroup90)) | 
| [IOTAMessageGroup80](IOTAMessageGroup80) | interface([IUnknown](IInterface)) | 
| [IOTAMessageGroup90](IOTAMessageGroup90) | interface([IOTAMessageGroup80](IOTAMessageGroup80)) | 
| [IOTAMessageNotifier](IOTAMessageNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAMessageServices40](IOTAMessageServices40) | interface([IUnknown](IInterface)) | 
| [IOTAMessageServices50](IOTAMessageServices50) | interface([IOTAMessageServices40](IOTAMessageServices40)) | 
| [IOTAMessageServices60](IOTAMessageServices60) | interface([IOTAMessageServices50](IOTAMessageServices50)) | 
| [IOTAMessageServices70](IOTAMessageServices70) | interface([IOTAMessageServices60](IOTAMessageServices60)) | 
| [IOTAMessageServices80](IOTAMessageServices80) | interface([IOTAMessageServices70](IOTAMessageServices70)) | 
| [IOTAMessageServices](IOTAMessageServices) | interface([IOTAMessageServices80](IOTAMessageServices80)) | 
| [IOTAModule140](IOTAModule140) | interface([IOTAModule70](IOTAModule70)) | 
| [IOTAModule](IOTAModule) | interface([IOTAModule140](IOTAModule140)) | 
| [IOTAModule40](IOTAModule40) | interface([IUnknown](IInterface)) | 
| [IOTAModule50](IOTAModule50) | interface([IOTAModule40](IOTAModule40)) | 
| [IOTAModule70](IOTAModule70) | interface([IOTAModule50](IOTAModule50)) | 
| [IOTAModuleCleanup](IOTAModuleCleanup) | interface([IInterface](IInterface)) | 
| [IOTAModuleCreator](IOTAModuleCreator) | interface([IOTACreator](IOTACreator)) | 
| [IOTAModuleData](IOTAModuleData) | interface([IInterface](IInterface)) | 
| [IOTAModuleErrors](IOTAModuleErrors) | interface([IInterface](IInterface)) | 
| [IOTAModuleInfo50](IOTAModuleInfo50) | interface([IUnknown](IInterface)) | 
| [IOTAModuleInfo160](IOTAModuleInfo160) | interface([IOTAModuleInfo50](IOTAModuleInfo50)) | 
| [IOTAModuleInfo](IOTAModuleInfo) | interface([IOTAModuleInfo160](IOTAModuleInfo160)) | 
| [IOTAModuleNotifier](IOTAModuleNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAModuleNotifier80](IOTAModuleNotifier80) | interface([IOTAModuleNotifier](IOTAModuleNotifier)) | 
| [IOTAModuleNotifier90](IOTAModuleNotifier90) | interface([IOTAModuleNotifier80](IOTAModuleNotifier80)) | 
| [IOTAModuleRegions](IOTAModuleRegions) | interface([IInterface](IInterface)) | 
| [IOTAModuleServices70](IOTAModuleServices70) | interface([IUnknown](IInterface)) | 
| [IOTAModuleServices](IOTAModuleServices) | interface([IOTAModuleServices70](IOTAModuleServices70)) | 
| [IOTANotifier](IOTANotifier) | interface([IUnknown](IInterface)) | 
| [IOTAOptions](IOTAOptions) | interface([IUnknown](IInterface)) | 
| [IOTAPackageInfo](IOTAPackageInfo) | interface([IUnknown](IInterface)) | 
| [IOTAPackageServices140](IOTAPackageServices140) | interface([IUnknown](IInterface)) | 
| [IOTAPackageServices210](IOTAPackageServices210) | interface([IOTAPackageServices140](IOTAPackageServices140)) | 
| [IOTAPackageServices](IOTAPackageServices) | interface([IOTAPackageServices210](IOTAPackageServices210)) | 
| [IOTAPerformanceTimer](IOTAPerformanceTimer) | interface([IInterface](IInterface)) | 
| [IOTAPersonalityHelpTrait](IOTAPersonalityHelpTrait) | interface([IDispatch](IDispatch)) | 
| [IOTAPersonalityServices100](IOTAPersonalityServices100) | interface([IInterface](IInterface)) | 
| [IOTAPersonalityServices140](IOTAPersonalityServices140) | interface([IOTAPersonalityServices100](IOTAPersonalityServices100)) | 
| [IOTAPersonalityServices](IOTAPersonalityServices) | interface([IOTAPersonalityServices140](IOTAPersonalityServices140)) | 
| [IOTAPrimaryCodeInsightManager](IOTAPrimaryCodeInsightManager) | interface([IDispatch](IDispatch)) | 
| [IOTAProcess60](IOTAProcess60) | interface([IUnknown](IInterface)) | 
| [IOTAProcess70](IOTAProcess70) | interface([IOTAProcess60](IOTAProcess60)) | 
| [IOTAProcess90](IOTAProcess90) | interface([IOTAProcess70](IOTAProcess70)) | 
| [IOTAProcess150](IOTAProcess150) | interface([IOTAProcess90](IOTAProcess90)) | 
| [IOTAProcess](IOTAProcess) | interface([IOTAProcess150](IOTAProcess150)) | 
| [IOTAProcessModNotifier](IOTAProcessModNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAProcessModule80](IOTAProcessModule80) | interface([IUnknown](IInterface)) | 
| [IOTAProcessModule90](IOTAProcessModule90) | interface([IOTAProcessModule80](IOTAProcessModule80)) | 
| [IOTAProcessModule110](IOTAProcessModule110) | interface([IOTAProcessModule90](IOTAProcessModule90)) | 
| [IOTAProcessModule](IOTAProcessModule) | interface([IOTAProcessModule110](IOTAProcessModule110)) | 
| [IOTAProcessNotifier](IOTAProcessNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAProcessNotifier90](IOTAProcessNotifier90) | interface([IOTAProcessNotifier](IOTAProcessNotifier)) | 
| [IOTAProject40](IOTAProject40) | interface([IOTAModule](IOTAModule)) | 
| [IOTAProject70](IOTAProject70) | interface([IOTAProject40](IOTAProject40)) | 
| [IOTAProject90](IOTAProject90) | interface([IOTAProject70](IOTAProject70)) | 
| [IOTAProject100](IOTAProject100) | interface([IOTAProject90](IOTAProject90)) | 
| [IOTAProject120](IOTAProject120) | interface([IOTAProject100](IOTAProject100)) | 
| [IOTAProject140](IOTAProject140) | interface([IOTAProject120](IOTAProject120)) | 
| [IOTAProject150](IOTAProject150) | interface([IOTAProject140](IOTAProject140)) | 
| [IOTAProject160](IOTAProject160) | interface([IOTAProject150](IOTAProject150)) | 
| [IOTAProject](IOTAProject) | interface([IOTAProject160](IOTAProject160)) | 
| [IOTAProjectBuilder40](IOTAProjectBuilder40) | interface([IUnknown](IInterface)) | 
| [IOTAProjectBuilder140](IOTAProjectBuilder140) | interface([IOTAProjectBuilder40](IOTAProjectBuilder40)) | 
| [IOTAProjectBuilder](IOTAProjectBuilder) | interface([IOTAProjectBuilder140](IOTAProjectBuilder140)) | 
| [IOTAProjectCompileNotifier](IOTAProjectCompileNotifier) | interface([IInterface](IInterface)) | 
| [IOTAProjectCreator](IOTAProjectCreator) | interface([IOTACreator](IOTACreator)) | 
| [IOTAProjectCreator50](IOTAProjectCreator50) | interface([IOTAProjectCreator](IOTAProjectCreator)) | 
| [IOTAProjectCreator80](IOTAProjectCreator80) | interface([IOTAProjectCreator50](IOTAProjectCreator50)) | 
| [IOTAProjectCreator160](IOTAProjectCreator160) | interface([IOTAProjectCreator80](IOTAProjectCreator80)) | 
| [IOTAProjectCreator190](IOTAProjectCreator190) | interface([IOTAProjectCreator160](IOTAProjectCreator160)) | 
| [IOTAProjectCurrentFolder](IOTAProjectCurrentFolder) | interface([IInterface](IInterface)) | 
| [IOTAProjectDependenciesList](IOTAProjectDependenciesList) | interface([IInterface](IInterface)) | 
| [IOTAProjectFileStorage](IOTAProjectFileStorage) | interface([IInterface](IInterface)) | 
| [IOTAProjectFileStorageNotifier](IOTAProjectFileStorageNotifier) | interface([IInterface](IInterface)) | 
| [IOTAProjectGroup160](IOTAProjectGroup160) | interface([IOTAModule](IOTAModule)) | 
| [IOTAProjectGroup](IOTAProjectGroup) | interface([IOTAProjectGroup160](IOTAProjectGroup160)) | 
| [IOTAProjectGroupCreator](IOTAProjectGroupCreator) | interface([IOTACreator](IOTACreator)) | 
| [IOTAProjectGroupProjectDependencies](IOTAProjectGroupProjectDependencies) | interface([IInterface](IInterface)) | 
| [IOTAProjectManager](IOTAProjectManager) | interface([IInterface](IInterface)) | 
| [IOTAProjectManagerMenu](IOTAProjectManagerMenu) | interface([IOTALocalMenu](IOTALocalMenu)) | 
| [IOTAProjectMenuContext](IOTAProjectMenuContext) | interface([IOTAMenuContext](IOTAMenuContext)) | 
| [IOTAProjectMenuItemCreatorNotifier](IOTAProjectMenuItemCreatorNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAProjectNotifier](IOTAProjectNotifier) | interface([IOTAModuleNotifier](IOTAModuleNotifier)) | 
| [IOTAProjectOptions40](IOTAProjectOptions40) | interface([IOTAOptions](IOTAOptions)) | 
| [IOTAProjectOptions70](IOTAProjectOptions70) | interface([IOTAProjectOptions40](IOTAProjectOptions40)) | 
| [IOTAProjectOptions](IOTAProjectOptions) | interface([IOTAProjectOptions70](IOTAProjectOptions70)) | 
| [IOTAProjectOptionsConfigurations140](IOTAProjectOptionsConfigurations140) | interface([IUnknown](IInterface)) | 
| [IOTAProjectOptionsConfigurations230](IOTAProjectOptionsConfigurations230) | interface([IOTAProjectOptionsConfigurations140](IOTAProjectOptionsConfigurations140)) | 
| [IOTAProjectOptionsConfigurations](IOTAProjectOptionsConfigurations) | interface([IOTAProjectOptionsConfigurations230](IOTAProjectOptionsConfigurations230)) | 
| [IOTAProjectResource](IOTAProjectResource) | interface([IOTAEditor](IOTAEditor)) | 
| [IOTAProjectUnitScopes](IOTAProjectUnitScopes) | interface([IInterface](IInterface)) | 
| [IOTAProjectWizard](IOTAProjectWizard) | interface([IOTARepositoryWizard](IOTARepositoryWizard)) | 
| [IOTAProjectWizard100](IOTAProjectWizard100) | interface([IOTAProjectWizard](IOTAProjectWizard)) | 
| [IOTARecord](IOTARecord) | interface([IUnknown](IInterface)) | 
| [IOTAReplaceOptions](IOTAReplaceOptions) | interface([IOTASearchOptions](IOTASearchOptions)) | 
| [IOTARepositoryWizard](IOTARepositoryWizard) | interface([IOTAWizard](IOTAWizard)) | 
| [IOTARepositoryWizard60](IOTARepositoryWizard60) | interface([IOTARepositoryWizard](IOTARepositoryWizard)) | 
| [IOTARepositoryWizard80](IOTARepositoryWizard80) | interface([IOTARepositoryWizard60](IOTARepositoryWizard60)) | 
| [IOTARepositoryWizard160](IOTARepositoryWizard160) | interface([IOTARepositoryWizard80](IOTARepositoryWizard80)) | 
| [IOTARepositoryWizard190](IOTARepositoryWizard190) | interface([IOTARepositoryWizard160](IOTARepositoryWizard160)) | 
| [IOTARepositoryWizard260](IOTARepositoryWizard260) | interface([IOTARepositoryWizard190](IOTARepositoryWizard190)) | 
| [IOTAResourceEntry](IOTAResourceEntry) | interface([IUnknown](IInterface)) | 
| [IOTAScaleable](IOTAScaleable) | interface([IInterface](IInterface)) | 
| [IOTASearchOptions](IOTASearchOptions) | interface([IUnknown](IInterface)) | 
| [IOTAServices50](IOTAServices50) | interface([IUnknown](IInterface)) | 
| [IOTAServices60](IOTAServices60) | interface([IOTAServices50](IOTAServices50)) | 
| [IOTAServices70](IOTAServices70) | interface([IOTAServices60](IOTAServices60)) | 
| [IOTAServices100](IOTAServices100) | interface([IOTAServices70](IOTAServices70)) | 
| [IOTAServices110](IOTAServices110) | interface([IOTAServices100](IOTAServices100)) | 
| [IOTAServices140](IOTAServices140) | interface([IOTAServices110](IOTAServices110)) | 
| [IOTAServices160](IOTAServices160) | interface([IOTAServices140](IOTAServices140)) | 
| [IOTAServices](IOTAServices) | interface([IOTAServices160](IOTAServices160)) | 
| [IOTASourceBreakpoint](IOTASourceBreakpoint) | interface([IOTABreakpoint](IOTABreakpoint)) | 
| [IOTASourceEditor70](IOTASourceEditor70) | interface([IOTAEditor](IOTAEditor)) | 
| [IOTASourceEditor180](IOTASourceEditor180) | interface([IOTASourceEditor70](IOTASourceEditor70)) | 
| [IOTASourceEditor](IOTASourceEditor) | interface([IOTASourceEditor180](IOTASourceEditor180)) | 
| [IOTASpeedSetting](IOTASpeedSetting) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTASplashScreenServices](IOTASplashScreenServices) | interface([IInterface](IInterface)) | 
| [IOTAStreamModifyTime](IOTAStreamModifyTime) | interface([IInterface](IInterface)) | 
| [IOTAStrings](IOTAStrings) | interface([IInterface](IInterface)) | 
| [IOTASyncEditNotifier](IOTASyncEditNotifier) | interface([IInterface](IInterface)) | 
| [IOTASyncEditPoint100](IOTASyncEditPoint100) | interface([IInterface](IInterface)) | 
| [IOTASyncEditPoint](IOTASyncEditPoint) | interface([IOTASyncEditPoint100](IOTASyncEditPoint100)) | 
| [IOTASyncEditPoints](IOTASyncEditPoints) | interface([IInterface](IInterface)) | 
| [IOTATabOrderable](IOTATabOrderable) | interface([IInterface](IInterface)) | 
| [IOTAThread50](IOTAThread50) | interface([IUnknown](IInterface)) | 
| [IOTAThread60](IOTAThread60) | interface([IOTAThread50](IOTAThread50)) | 
| [IOTAThread70](IOTAThread70) | interface([IOTAThread60](IOTAThread60)) | 
| [IOTAThread90](IOTAThread90) | interface([IOTAThread70](IOTAThread70)) | 
| [IOTAThread110](IOTAThread110) | interface([IOTAThread90](IOTAThread90)) | 
| [IOTAThread120](IOTAThread120) | interface([IOTAThread110](IOTAThread110)) | 
| [IOTAThread140](IOTAThread140) | interface([IOTAThread120](IOTAThread120)) | 
| [IOTAThread150](IOTAThread150) | interface([IOTAThread140](IOTAThread140)) | 
| [IOTAThread](IOTAThread) | interface([IOTAThread150](IOTAThread150)) | 
| [IOTAThreadNotifier](IOTAThreadNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAThreadNotifier160](IOTAThreadNotifier160) | interface([IOTAThreadNotifier](IOTAThreadNotifier)) | 
| [IOTATimerServices](IOTATimerServices) | interface([IInterface](IInterface)) | 
| [IOTAToDoManager](IOTAToDoManager) | interface([IUnknown](IInterface)) | 
| [IOTAToDoServices](IOTAToDoServices) | interface([IUnknown](IInterface)) | 
| [IOTAToolsFilter60](IOTAToolsFilter60) | interface([IUnknown](IInterface)) | 
| [IOTAToolsFilter](IOTAToolsFilter) | interface([IOTAToolsFilter60](IOTAToolsFilter60)) | 
| [IOTAToolsFilterNotifier](IOTAToolsFilterNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTATransactionItem](IOTATransactionItem) | interface([IInterface](IInterface)) | 
| [IOTATypeLibEditor](IOTATypeLibEditor) | interface([IOTAEditor](IOTAEditor)) | 
| [IOTATypeLibModule](IOTATypeLibModule) | interface([IOTAModule](IOTAModule)) | 
| [IOTATypeLibrary](IOTATypeLibrary) | interface([IInterface](IInterface)) | 
| [IOTAVersionControlNotifier](IOTAVersionControlNotifier) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAVersionControlNotifier150](IOTAVersionControlNotifier150) | interface([IOTAVersionControlNotifier](IOTAVersionControlNotifier)) | 
| [IOTAVersionControlServices](IOTAVersionControlServices) | interface([IInterface](IInterface)) | 
| [IOTAWizard](IOTAWizard) | interface([IOTANotifier](IOTANotifier)) | 
| [IOTAWizardServices](IOTAWizardServices) | interface([IUnknown](IInterface)) | 



























































































































































































































































































































































