## Description
This provides a globally available service for timing operations and tracking performance.

Individual timer results are tracked and persisted by a more complete performance monitor implementation.  See the PerfMon.pas unit for information. 

Timer services must be enabled with the BDS.exe -TS command line switch.  The default log file name is BDSPerformanceData.log and is located in the application data directory.  

The default logfile name may be overriden by including the filename along with the -TS command line switch (no spaces) or via the property on the service interface.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| FindTimer |  Find a timer object from a description or category  | 
| GetLogFileName |  Gets the name of the log file.  | 
| GetTimer |  Retrieve a timer object to get the description, category or results  | 
| GetTimerCount |  Returns the number of individual timers for iterating all results  | 
| MarkElapsedTime |  Set a marker with the elapsed time since the process was started  | 
| StartTimer |  Begin timing a new operation.  Returned handle is used to stop timing. Category is optional  | 
| StopTimer |  Alternate stop method, useful when StartTimer and StopTimer are in different places  | 
| StopTimer |  Stop an active timer   | 
| UpdateLogFile |  Force collected data for all timers to be written to the logfile  | 
| SetLogFileName | Sets the name of the log file. |

## Properties
| Property | Description |
| ------------- | ------------- |
| LogFileName | Calls GetLogFileName or SetLogFileName |
