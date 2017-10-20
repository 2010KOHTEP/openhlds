unit SVMaster;

interface

var
  NoMasterServer: Boolean;

procedure Master_Heartbeat_f;
function Master_IsLanGame: Boolean;
procedure Master_SetMaster_f;

implementation

uses
  Default, SVMain, SVSteam, Console;

procedure Master_Heartbeat_f;
begin

end;

function Master_IsLanGame: Boolean;
begin
  Result := sv_lan.Value <> 0.0;
end;

procedure Master_SetMaster_f;
var
  Status: PLChar;
begin
  if not Assigned(Steam3Client) then
    Print('Setmaster unavailable, start a server first.'#10)
  else
  begin
    if Cmd_Argc <> 2 then
      Print(['Syntax: ', Cmd_Argv(0), ' <enable | disable>'#10])
    else
    begin
      Status := Cmd_Argv(1);

      if (Status <> nil) and (Status^ <> #0) then
      begin
        if (StrIComp(Status, 'disable') = 0) and not NoMasterServer then
          NoMasterServer := False
        else
        if (StrIComp(Status, 'enable') = 0) and NoMasterServer then
          NoMasterServer := True
        else
          Exit;


      end;
    end;
  end;
end;

end.
