### Notes
WORK IN PROGRESS.
Some links are empty.
Please feel free to add or modify details.
The philosophy of this wiki is to add as much information as possible, which is currently missing in the Open Tools API, and then add useful information which can help in developing any plugins into the RAD Studio IDE.

Deprecated interfaces will not be listed.

Look at [IOTAAdditionalFilesModuleCreator](IOTAAdditionalFilesModuleCreator), [IOTANotifier](https://github.com/Embarcadero/OTAPI-Docs/wiki/IOTANotifier) and [IOTADebuggerServices150](https://github.com/Embarcadero/OTAPI-Docs/wiki/IOTADebuggerServices150) for inspiration on how to add descriptions, methods and properties.

Use [Obtaining Tools API Services](http://docwiki.embarcadero.com/RADStudio/en/Obtaining_Tools_API_Services) to get the description for the services. If it doesn't exist, write your own description.
***


The Open Tools API consists of the following units and can be accessed by adding the designide package to the 

- requires clause of your package, 
- or any of the following units to the uses clause of your DLL project and/or any of its units, and adding the designide package to be linked into your project.

The units are: 

* [ActionEditors](ActionEditors)
* [BCCStrs](BCCStrs)
* [BRCCStrs](BRCCStrs)
* [CLANGStrs](CLANGStrs)
* [CodeTemplateAPI](CodeTemplateAPI)
* [CommonOptionStrs](CommonOptionStrs)
* [CPPCOMMONStrs](CPPCOMMONStrs)
* [DataExplorerAPI](DataExplorerAPI)
* [DCCStrs](DCCStrs)
* [DeploymentAPI](DeploymentAPI)
* [DesignConst](DesignConst)
* [DesignEditors](DesignEditors)
* [DesignerTypes](DesignerTypes)
* [DesignIntf](DesignIntf)
* [DesignMenus](DesignMenus)
* [DesignWindows](DesignWindows)
* [EditIntf](EditIntf)
* [ExptIntf](ExptIntf)
* [FileHistoryAPI](FileHistoryAPI)
* [FileIntf](FileIntf)
* [ILinkStrs](ILinkStrs)
* [IStreams](IStreams)
* [PaletteAPI](PaletteAPI)
* [PlatformAPI](PlatformAPI)
* [PlatformConst](PlatformConst)
* [PropertyCategories](PropertyCategories)
* [PropInspAPI](PropInspAPI)
* [StructureViewAPI](StructureViewAPI)
* [TasmStrs](TasmStrs)
* [TlibStrs](TlibStrs)
* [ToolIntf](ToolIntf)
* [ToolsAPI](ToolsAPI)
* [ToolWnds](ToolWnds)
* [TreeIntf](TreeIntf)
* [VCLEditors](VCLEditors)
* [VCLSprigs](VCLSprigs)
* [VirtIntf](VirtIntf)
* [VisualizationServicesAPI](VisualizationServicesAPI)

Collectively, these units form the Open Tools API (ToolsAPI, or OTAPI) and allows developers access to the IDE and its internals.