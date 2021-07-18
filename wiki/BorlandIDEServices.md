## Description
BorlandIDEServices is a variable to IBorlandIDEServices, and is the variable from which you obtain various interfaces to use.

To obtain any of the specialized services, you can use the [Supports](http://docwiki.embarcadero.com/Libraries/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.

## Usage

```
var
  LDebuggerServices: IOTADebuggerServices;

if Supports(BorlandIDEServices, IOTADebuggerServices, LDebuggerServices) then
  begin
    // do something with LDebuggerServices here...
  end;
```
```
var
  LServices: IOTA...; // use the full type name here

if Supports(BorlandIDEServices, IOTA...., LServices) then
  begin
    // Do something with LServices
  end;
```

```
var
  LNTAType: INTA...; // use the full type name here

if Supports(BorlandIDEServices, INTA..., LNTAType) then
  begin
    // Do something with LNTAType
  end;
```

```
var LPackageServices: IOTAPackageServices210 := BorlandIDEServices as IOTAPackageServices210;

LPackageServices.InstallPackage(...);
```

The following are interfaces that you can query from BorlandIDEServices:

| interface | GUID |
| - | - |
[IAssemblySearchPathService](IAssemblySearchPathService) | {65EFA2E1-5EDE-42B9-B4EE-02D04A07A6B4} |
[IBorlandIDEServices](IBorlandIDEServices) | {C9E8E577-B5D8-43F3-BC84-6A734A015732} |
[IBorlandIDEServices70](IBorlandIDEServices70) | {7FD1CE92-E053-11D1-AB0B-00C04FB16FB3} |
[IBorlandPaletteServices](IBorlandPaletteServices) | {E81940BD-572D-4A95-97F7-5471CDE6E567} |
[ICodeCompletionManager](ICodeCompletionManager) | {3E8AE84D-085B-41C9-8F73-8786EE2A1B0B} |
[IConnectionListener](IConnectionListener) | {338D650B-3914-47DD-AE4A-77AD973F93F4} |
[IDesignNotification](IDesignNotification) | {E8C9F739-5601-4ADD-9D95-594132D4CEFD} |
[IDesignNotificationEx](IDesignNotificationEx) | {41DDF415-B9ED-48AE-8291-D49429E3CDF7} |
[IDispatch](IDispatch) | {00020400-0000-0000-C000-000000000046} |
[IDisposable](IDisposable) | {805D7A98-D4AF-3F0F-967F-E5CF45312D2C} |
[IDocModuleFactoryManager](IDocModuleFactoryManager) | {6300FF70-E12C-46E4-8468-0D133A3894C9} |
[IFileIteration](IFileIteration) | {B3161FDB-1014-41F2-BB7B-C506090A1A1D} |
[IFileListener](IFileListener) | {116B92F7-13DE-4C73-AD0C-C18DED3CFE52} |
[IFindReferenceUserInterface](IFindReferenceUserInterface) | {C06264F1-A014-3EA5-B09E-6C7D032764E2} |
[IIDEAddInLoaderService](IIDEAddInLoaderService) | {2F77B9D9-3A2C-4822-9F42-E7F05C5AA2ED} |
[IImplementation](IImplementation) | {F9D448F2-50BC-11D1-9FB5-0020AF3D82DA} |
[IInterface](IInterface) | {00000000-0000-0000-C000-000000000046} |
[IInternalCodeTemplateManager](IInternalCodeTemplateManager) | {B98C9F83-9531-4D48-9AB1-4E11BFC5F083} |
[IInternalHelpServices](IInternalHelpServices) | {F91345F9-412A-4634-A85D-FEA90A0402E2} |
[IInteropCodeEditorControlCreator](IInteropCodeEditorControlCreator) | {72A5E09B-A046-47D1-95AA-15A333C7131B} |
[IInteropMessageService](IInteropMessageService) | {FF877130-F96F-3885-9A3E-3093A3C1D831} |
[IInteropObjectTreeViewImageOffsets](IInteropObjectTreeViewImageOffsets) | {F0BDDFA6-2CF9-43EA-BD51-854AE7A5E46B} |
[IInteropPopupMenuService](IInteropPopupMenuService) | {230EF695-2A9B-4FAA-BD03-A7D2A373AC6D} |
[IMirrorService](IMirrorService) | {B7E62C00-B55E-4A28-816B-6D6E2AA58D2D} |
[IModuleExplorerServices](IModuleExplorerServices) | {16B3C4B2-9A4B-45AD-AFF7-D23B9766F8C6} |
[INTAEditorServices](INTAEditorServices) | {3CC6849A-6C72-49F8-BF63-E95083789141} |
[INTAEditorViewServices](INTAEditorViewServices) | {29F85F0F-E210-4577-9F5D-2B6ED7C05398} |
[INTAEnvironmentOptionsServices](INTAEnvironmentOptionsServices) | {88EAA6AC-B8C0-42F7-9C00-E5D31B815998} |
[INTAIDEInsightService](INTAIDEInsightService) | {1780CF98-614F-4BB9-A856-3D1D2EA05A57} |
[INTAIDEInsightService180](INTAIDEInsightService180) | {6B0977D7-DE13-4715-AB0B-3791126CABE9} |
[INTAPaletteContextMenu](INTAPaletteContextMenu) | {B58639BC-4332-45BF-A79E-D4977EE7E024} |
[INTAPropInspServices](INTAPropInspServices) | {5891E776-BAFA-4EA5-AEE6-E32F210B5326} |
[INTAServices](INTAServices) | {8209041F-F37F-4570-88B8-6C310FFFF81A} |
[INTAServices40](INTAServices40) | {3C7F3267-F0BF-11D1-AB1E-00C04FB16FB3} |
[INTAServices70](INTAServices70) | {C17B3DF1-DFE5-11D2-A8C7-00C04FA32F53} |
[INTAServices90](INTAServices90) | {89160C3A-8EF4-4D2E-8FD5-D8492F61DB3E} |
[INTAServices120](INTAServices120) | {26B056B7-FB49-41BC-A8C2-151DE1EBF465} |
[IOTAAboutBoxService](IOTAAboutBoxService) | {5C01B0EE-E660-4474-8B18-3676F20006AC} |
[IOTAAboutBoxServices](IOTAAboutBoxServices) | {62A2F7FD-16F1-45B9-9417-A2D293D07A22} |
[IOTAAboutBoxServices120](IOTAAboutBoxServices120) | {1DD6FC0B-32F9-4161-A81A-9BE214F9F30D} |
[IOTAActionService](IOTAActionService) | {97ECFDFB-0435-43D2-8270-A48D3C09290E} |
[IOTAActionServices](IOTAActionServices) | {F17A7BC9-E07D-11D1-AB0B-00C04FB16FB3} |
[IOTAAdjustServices](IOTAAdjustServices) | {0B7DB079-68B7-4545-9BAF-6D4A0554ED19} |
[IOTAAndroidServicesManager](IOTAAndroidServicesManager) | {4C4F6CEE-CA06-46D6-9114-B22FA4F7E771} |
[IOTABaseStructureView](IOTABaseStructureView) | {04084727-3466-4220-9337-4F2A0CC17F87} |
[IOTABitmapService](IOTABitmapService) | {9B9487F0-3F83-4817-AACD-3C84D2FEF954} |
[IOTACodeFormatterServices](IOTACodeFormatterServices) | {652A289F-A67F-4C3F-876C-992DF644B8C1} |
[IOTACodeInsightServices](IOTACodeInsightServices) | {FD980885-AF2D-4D29-8EFB-2EAE52C37596} |
[IOTACodeInsightServices60](IOTACodeInsightServices60) | {476904F8-89A9-4CD8-A71E-164660659763} |
[IOTACodeInsightServices270](IOTACodeInsightServices270) | {EE5C42A9-DBC8-4C5D-B28E-528024CBC97C} |
[IOTACodeInsightSymbolList](IOTACodeInsightSymbolList) | {4CA1CDFD-BD9A-4628-94AE-9BF3EB2DA22E} |
[IOTACodeQueryServices](IOTACodeQueryServices) | {03598A83-60A5-4608-81C8-F5F7739C3637} |
[IOTACodeTemplateServices](IOTACodeTemplateServices) | {92E1F6C0-1273-4412-9728-C83CA94AC9D0} |
[IOTACodeTemplateServices100](IOTACodeTemplateServices100) | {AF5A5EDA-DF66-4E07-8CAF-19BBDCF92D82} |
[IOTACompileServices](IOTACompileServices) | {68C486EF-C079-4D40-B462-2C0DD21FE342} |
[IOTACustomDifferenceManager](IOTACustomDifferenceManager) | {6440B99E-AD2A-485B-BC9E-E43E8D81C999} |
[IOTACustomMergeManager](IOTACustomMergeManager) | {B04FCE64-E57F-47E8-BA6A-2E96AD737BBA} |
[IOTADataExplorerService](IOTADataExplorerService) | {51DC9F09-3DF5-4FB2-8DC1-A9BA137FA6BD} |
[IOTADebuggerServices](IOTADebuggerServices) | {587EAFAE-B8B2-4007-A233-BE09052BB67A} |
[IOTADebuggerServices60](IOTADebuggerServices60) | {0E3B9D7A-E119-11D1-AB0C-00C04FB16FB3} |
[IOTADebuggerServices90](IOTADebuggerServices90) | {A797823A-6BD7-41A4-B36B-3A831A737B2D} |
[IOTADebuggerServices120](IOTADebuggerServices120) | {29AE42CE-006A-4A96-A0BB-0D63D9E83A5C} |
[IOTADebuggerServices150](IOTADebuggerServices150) | {DC682429-BB92-4AF7-9E62-26557D68DE75} |
[IOTADeploymentService](IOTADeploymentService) | {658EBC6E-E96F-45FA-934B-505D158852C7} |
[IOTADesignerCommandServices](IOTADesignerCommandServices) | {C18D655E-54B1-412D-BECF-584B08838827} |
[IOTADesignerDeviceServices](IOTADesignerDeviceServices) | {FFF44A3C-B434-4E84-A58E-E5CF52DAB09A} |
[IOTADesignerDeviceServices190](IOTADesignerDeviceServices190) | {6DB988CC-AFEB-47CF-A31D-E69DDF6BE068} |
[IOTADirectoryServices](IOTADirectoryServices) | {A9ACE063-840A-4A80-82BE-5DE441DED61D} |
[IOTAEditorService](IOTAEditorService) | {B51B7655-F1F7-477D-9B35-395BFB5BA9AA} |
[IOTAEditorServices](IOTAEditorServices) | {BE733055-5ED8-45B4-BAB1-19C46C237408} |
[IOTAEditorServices60](IOTAEditorServices60) | {C2812BA7-C48D-11D2-9AE8-00A02457621F} |
[IOTAEditorServices70](IOTAEditorServices70) | {2596F557-44A3-49A6-867E-91E21E00F53E} |
[IOTAEditorServices80](IOTAEditorServices80) | {F37E8C46-0A02-4FD4-8D57-E55F9A5783EC} |
[IOTAEditorViewServices](IOTAEditorViewServices) | {75FE2D18-622B-4198-A092-ADD1E91612BD} |
[IOTAEditorViewServices140](IOTAEditorViewServices140) | {CCE8FBE0-E121-450C-9366-1AC6BFD6CF81} |
[IOTAExplorerServices](IOTAExplorerServices) | {232405C9-4C2B-4E2B-ABB3-00B371340765} |
[IOTAExternalDeviceServices](IOTAExternalDeviceServices) | {59CFCEEE-F977-4303-9829-54DE3A31FAA5} |
[IOTAFileFilterServices](IOTAFileFilterServices) | {84302AE6-646C-4547-85F1-4FB0839038E2} |
[IOTAFileHistoryManager](IOTAFileHistoryManager) | {3A5A2687-91FE-4D7C-B56B-FD3FB8D4096E} |
[IOTAFileHistoryManager](IOTAFileHistoryManager) | {55A2BEE4-A64C-4749-8388-070CAEFDEFA5} |
[IOTAFileHistoryNotifier](IOTAFileHistoryNotifier) | {286AC9E5-875A-4402-AF70-8ACDD6757EC8} |
[IOTAGalleryCategoryManager](IOTAGalleryCategoryManager) | {5FAFFE12-E1A4-4286-94F9-A025B3C0BF41} |
[IOTAGalleryCategoryManager](IOTAGalleryCategoryManager) | {EF79C413-F1DF-4EED-9A0D-2F1CA265EE25} |
[IOTAGetItService](IOTAGetItService) | {6DA2C99A-212A-4A24-B3CA-8C67CF4B7123} |
[IOTAHelpServices](IOTAHelpServices) | {25F4CC12-EA93-4AEC-BC4A-DFDF427053B0} |
[IOTAHighlightServices](IOTAHighlightServices) | {78C26089-6CAD-40D1-BAC2-37A84DF8F3E6} |
[IOTAHistoryServices](IOTAHistoryServices) | {0EFF550D-305C-466C-94C1-1D406DF9B73A} |
[IOTAIDEInsightService](IOTAIDEInsightService) | {D1258D2C-DE95-4A0A-9A7E-8C6167F48B31} |
[IOTAIDENotifier](IOTAIDENotifier) | {E052204F-ECE9-11D1-AB19-00C04FB16FB3} |
[IOTAIDENotifier50](IOTAIDENotifier50) | {AC7D29F1-D9A9-11D2-A8C1-00C04FA32F53} |
[IOTAIDENotifier80](IOTAIDENotifier80) | {41679BBC-660E-4948-AD80-63C679CB973C} |
[IOTAIDEThemingServices](IOTAIDEThemingServices) | {DEAD2647-9B2C-4084-A61E-1E69A9179637} |
[IOTAIDEThemingServices250](IOTAIDEThemingServices250) | {DEAD2648-9B21-4084-771E-1E69A9176637} |
[IOTAIDEThemingServices260](IOTAIDEThemingServices260) | {BDEBDA9B-7001-4A25-9639-A3699AE9FC51} |
[IOTAInternalKeyboardServices](IOTAInternalKeyboardServices) | {C5919EA5-D381-11D2-ABD8-00C04FB16FB3} |
[IOTAKeyBindingServices](IOTAKeyBindingServices) | {F8CAF8D8-D263-11D2-ABD8-00C04FB16FB3} |
[IOTAKeyboardDiagnostics](IOTAKeyboardDiagnostics) | {AEFC65F1-2504-11D3-AC25-00C04FB16FB3} |
[IOTAKeyboardServices](IOTAKeyboardServices) | {F8CAF8D5-D263-11D2-ABD8-00C04FB16FB3} |
[IOTALSPServerManager](IOTALSPServerManager) | {D8F211E4-1F2C-4580-A59F-B9E309895486} |
[IOTAMainMenuService](IOTAMainMenuService) | {9CCFD283-F6F9-4E2B-A4B6-5EBE67A21313} |
[IOTAMessageNotifier](IOTAMessageNotifier) | {FDCB2ED4-B89C-4D00-B0DB-19562951CDBB} |
[IOTAMessageServices](IOTAMessageServices) | {29E893DB-DD9A-4CEA-B2EE-57532E01A9B9} |
[IOTAMessageServices40](IOTAMessageServices40) | {26EB0E4E-F97B-11D1-AB27-00C04FB16FB3} |
[IOTAMessageServices50](IOTAMessageServices50) | {3263774B-E959-11D2-AC7B-00C04FB173DC} |
[IOTAMessageServices60](IOTAMessageServices60) | {58A40C76-7EC6-41DA-A2EF-4B3AF31D3977} |
[IOTAMessageServices70](IOTAMessageServices70) | {B3F7D3A6-D1F7-48A0-8BB0-F49CF60FB815} |
[IOTAMessageServices80](IOTAMessageServices80) | {02DD618A-30A0-4DCE-9D04-6B736646FFCB} |
[IOTAMobileDeviceServices](IOTAMobileDeviceServices) | {3DAA5A1D-5C3B-4EA8-B4BA-A790E70D0768} |
[IOTAModuleHandlerGauntletService](IOTAModuleHandlerGauntletService) | {46E708B5-1B3D-4A94-869F-DF1752A6CE35} |
[IOTAModuleServices](IOTAModuleServices) | {55A5E848-27FB-4880-8E7C-7F05A9802482} |
[IOTAModuleServices](IOTAModuleServices) | {D1FB17B4-C46C-4C65-97AF-1BA38016E80D} |
[IOTAModuleServices70](IOTAModuleServices70) | {F17A7BCD-E07D-11D1-AB0B-00C04FB16FB3} |
[IOTANotifier](IOTANotifier) | {F17A7BCF-E07D-11D1-AB0B-00C04FB16FB3} |
[IOTAPackageServices](IOTAPackageServices) | {1E8AB2DA-CC56-4FA5-851A-9CDC957D1D65} |
[IOTAPackageServices140](IOTAPackageServices140) | {26EB0E4D-F97B-11D1-AB27-00C04FB16FB3} |
[IOTAPackageServices210](IOTAPackageServices210) | {2C96711A-267A-4024-9C54-B11FCC596A6F} |
[IOTAPaletteServices](IOTAPaletteServices) | {6963F71C-0A3F-4598-B6F6-9574CE0E6847} |
[IOTAPaletteServices](IOTAPaletteServices) | {D1F0E26A-7EF1-4390-B86E-8A24CB61FF1B} |
[IOTAPersonalityService](IOTAPersonalityService) | {62198A9F-790C-4A0C-818B-CFC561E2E73B} |
[IOTAPersonalityServices](IOTAPersonalityServices) | {F6B15FD1-E9D6-4DCC-8ACD-06143F1F67BE} |
[IOTAPersonalityServices100](IOTAPersonalityServices100) | {F66FB6B3-24DC-4BC0-8A6B-4159B527A1FC} |
[IOTAPersonalityServices140](IOTAPersonalityServices140) | {92D70AB5-F54F-4432-8E0E-5BEEF4B3BE77} |
[IOTAPlatformSDKServices](IOTAPlatformSDKServices) | {6C659F7B-FD36-478C-85C5-F2942C224FD9} |
[IOTAPlatformSDKServices180](IOTAPlatformSDKServices180) | {A41933CA-8F86-46F3-835B-63EF1CAD9783} |
[IOTAPlatformSDKServices190](IOTAPlatformSDKServices190) | {DEEC6CA6-7027-4962-A236-A2DF222F2163} |
[IOTAPlatformSDKServices210](IOTAPlatformSDKServices210) | {9A083C9D-8CE3-43E6-B0AB-B70C3FFB8308} |
[IOTAPlatformServices](IOTAPlatformServices) | {7144C21F-D550-451E-B684-9189BD21B53E} |
[IOTAPlatformServices160](IOTAPlatformServices160) | {8F20CD96-6702-43B8-876C-C985C54C9AFF} |
[IOTAPlatformServices220](IOTAPlatformServices220) | {DD80D595-FCCC-4764-9EF9-7C36BA5B11CE} |
[IOTAPlatformServices230](IOTAPlatformServices230) | {775658AD-6A87-40C9-95F0-6CDF8A5A83C8} |
[IOTAProjectFileStorage](IOTAProjectFileStorage) | {81515027-EEED-442F-977C-8F39F53D8D0A} |
[IOTAProjectFileStorage](IOTAProjectFileStorage) | {EB421DBB-D961-4041-B17D-8BFAEE4291A1} |
[IOTAProjectManager](IOTAProjectManager) | {B142EF92-0A91-4614-A72A-CE46F9C88B7B} |
[IOTAProjectManager](IOTAProjectManager) | {D53EC96F-F329-43C2-B9A2-E30A1607A87B} |
[IOTAProjectManagerMenuServices](IOTAProjectManagerMenuServices) | {158FFEA2-79EB-4000-AAE7-EBD67D9AF4C3} |
[IOTAPropInspServices](IOTAPropInspServices) | {7EF7625C-42C0-434F-B538-76B12C3D8E7C} |
[IOTARemoteProfileServices](IOTARemoteProfileServices) | {AF6D9681-143F-48FD-AC78-418DFCF6BAC8} |
[IOTARemoteProfileServices160](IOTARemoteProfileServices160) | {BC86D71D-8A31-4921-A27F-5D32DC3A9A4F} |
[IOTARemoteProfileServices170](IOTARemoteProfileServices170) | {5C996765-9F24-47B1-AF80-36394F3069F9} |
[IOTARemoteProfileServices230](IOTARemoteProfileServices230) | {9BF5A1F9-CE88-4C92-8906-F12307D56FC1} |
[IOTAService](IOTAService) | {724986CC-FE2A-4691-9495-A1C20328A5BE} |
[IOTAServices](IOTAServices) | {D1358CFB-9B5C-4E6C-BC4B-C6D06C6689C1} |
[IOTAServices50](IOTAServices50) | {7FD1CE91-E053-11D1-AB0B-00C04FB16FB3} |
[IOTAServices60](IOTAServices60) | {577ECE00-59EE-4F21-8190-9FD8A45FE550} |
[IOTAServices70](IOTAServices70) | {0044BB24-425D-D611-9CF1-00C04FA06AFC} |
[IOTAServices100](IOTAServices100) | {33B33186-3CEC-4624-970E-417A8FE14089} |
[IOTAServices110](IOTAServices110) | {17A48937-2C9C-4543-AB6D-2CF13BAE544B} |
[IOTAServices140](IOTAServices140) | {80E56DFA-82B2-425A-921E-8E5ED6164A11} |
[IOTAServices160](IOTAServices160) | {86602DE0-50BF-4AE5-BAF4-D9438BD33218} |
[IOTASplashScreenService](IOTASplashScreenService) | {2550066E-CF92-475E-8C27-EBDC6CEFB3D8} |
[IOTAStructureNotifier](IOTAStructureNotifier) | {F158EF17-342C-46AA-BA06-5DCD544354BF} |
[IOTAStructureView](IOTAStructureView) | {9A4B002F-C7D6-4114-BC6D-704E5F323C48} |
[IOTAStructureView](IOTAStructureView) | {A37053F0-8E22-47A2-8E99-1CFFFC392BEF} |
[IOTAStructureView110](IOTAStructureView110) | {72C311FE-4C8A-44AD-9F1F-9A846FE617F2} |
[IOTASyncEditNotifier](IOTASyncEditNotifier) | {FA65E734-7F38-48F2-9A9C-B09650159E34} |
[IOTATimerServices](IOTATimerServices) | {CA12BE5C-FC9B-403A-BFB5-786562026ABD} |
[IOTATimerServices](IOTATimerServices) | {E7D682D3-3540-4981-9ABF-160828754191} |
[IOTAToDoServices](IOTAToDoServices) | {F8FC00EF-E61A-11D2-AA99-00C04FA35CE8} |
[IOTAVersionControlServices](IOTAVersionControlServices) | {1BFE2647-9BFC-4084-AE3E-3E09A9179E34} |
[IOTAWizardService](IOTAWizardService) | {935F3EA1-EFD6-4901-8138-2415F6AD1C3D} |
[IOTAWizardServices](IOTAWizardServices) | {B75C0CE3-EEA6-11D1-9504-00608CCBF153} |
[IPlatformSDKManager](IPlatformSDKManager) | {F7CFE782-F12F-49AE-B5CF-A1F4D8A2E101} |
[IPMMCustomMenu](IPMMCustomMenu) | {67B6D74A-BD98-4A75-891A-DF07DFE21BA9} |
[IPMMIdentification](IPMMIdentification) | {1E8127BC-B201-4785-9A56-5BE153A3E843} |
[IProgressListener](IProgressListener) | {12D5B8DB-FC65-40E7-A8AF-682DF6EED027} |
[IProjectCheckinList](IProjectCheckinList) | {783D1B33-9A56-465C-9082-F918C2F30A6E} |
[IProjectManagerImages](IProjectManagerImages) | {194440BB-468D-4F0B-B02B-FE38131F97E3} |
[IRefactoringUserInterface](IRefactoringUserInterface) | {CB03956A-3CDF-35F9-9457-D7F456A05BE4} |
[IRemoteProfileManager](IRemoteProfileManager) | {FFC55A5C-8D5A-4DF8-B8B2-BF3D34B81C3C} |
[ISupportErrorInfo](ISupportErrorInfo) | {DF0B3D60-548F-101B-8E65-08002B2BD119} |
[ISyncEditServices](ISyncEditServices) | {98EF6BDA-C48A-4D4C-9C66-AE8255BA710F} |
[ITransactionList](ITransactionList) | {E522C463-4E23-4AF4-BEDD-D1DD36E7E82F} |
[IUserOverrideManager](IUserOverrideManager) | {3849AEBC-E279-4EC9-BA12-D03148AADAAD} |
[IVisualizationService](IVisualizationService) | {66C2DF99-87FD-41D9-9894-21D14D256F7A} |
