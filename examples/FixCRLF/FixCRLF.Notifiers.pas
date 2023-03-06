unit FixCRLF.Notifiers;

interface
uses
  ToolsAPI;

type

  TBaseCompileNotification = class(TNotifierObject)
  public
    /// <summary>
    /// </summary>
    /// <param name="Succeeded">
    /// </param>
    procedure AfterCompile(Succeeded: Boolean); virtual;

    /// <summary>
    /// </summary>
    /// <param name="Project">
    /// </param>
    /// <param name="Cancel">
    /// </param>
    procedure BeforeCompile(const Project: IOTAProject; var Cancel: Boolean); virtual;

    /// <summary>
    /// </summary>
    destructor Destroy; override;

    /// <summary>
    /// </summary>
    /// <param name="NotifyCode">
    /// </param>
    /// <param name="FileName">
    /// </param>
    /// <param name="Cancel">
    /// </param>
    procedure FileNotification(NotifyCode: TOTAFileNotification;
      const FileName: string; var Cancel: Boolean); virtual;
  end;

implementation

{ TBaseCompileNotification }

procedure TBaseCompileNotification.AfterCompile(Succeeded: Boolean);
begin
end;

procedure TBaseCompileNotification.BeforeCompile(const Project: IOTAProject;
  var Cancel: Boolean);
begin
end;

destructor TBaseCompileNotification.Destroy;
begin
  inherited;
end;

procedure TBaseCompileNotification.FileNotification(
  NotifyCode: TOTAFileNotification; const FileName: string;
  var Cancel: Boolean);
begin
end;

end.
