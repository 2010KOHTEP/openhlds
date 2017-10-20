unit SVSteam;

interface

uses
  Default, SDK;

type
  TSteam3 = class
  private
    FLoggedOn: Bool8;
    FLogOnResult: Bool32;
    FHSteamPipe: THandle;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TSteam3Client = class(TSteam3)

  end;

  TSteam3Server = class(TSteam3)

  end;

function Steam_ClientRunFrame: Int;
function Steam_GSBLoggedOn: Int;
function Steam_GSBSecure: Int;
function Steam_GSBSecurePreference: Int;
function Steam_GSGetSteamID: Int64;
function Steam_GSInitiateGameConnection(Data: Pointer; MaxData: Int; SteamID: Int64; ServerIP: UInt; ServerPort: UInt16; Secure: Boolean): Int;
function Steam_GSTerminateGameConnection(ServerIP: UInt; ServerPort: UInt16): Int;
function Steam_GetCommunityName: PLChar;
function Steam_GetGSUniverse: PLChar;
procedure Steam_HandleIncomingPacket(Data: Pointer; Size: Int; FromIP: Int; FromPort: UInt16);
procedure Steam_InitClient;
function Steam_NotifyBotConnect(Client: PClient): Boolean;
function Steam_NotifyClientConnect(Client: PClient; Steam2Key: Pointer; Steam2Size: Int): Boolean;
procedure Steam_NotifyClientDisconnect(Client: PClient);
procedure Steam_NotifyOfLevelChange;
procedure Steam_RunFrame;
procedure Steam_SetCVar(Key: PLChar; Value: PLChar);
procedure Steam_Shutdown;
procedure Steam_ShutdownClient;
procedure Steam_Steam3IDtoSteam2(SteamID: UInt64; Dest: Pointer);
function Steam_StringToSteamID(S: PLChar): UInt64;

var
  Steam3Server: TSteam3Server;
  Steam3Client: TSteam3Client;

implementation

function Steam_Activate: Int;
begin
  Result := 0;
end;

function Steam_ClientRunFrame: Int;
begin
  Result := 0;
end;

function Steam_GSBLoggedOn: Int;
begin
  Result := 0;
end;

function Steam_GSBSecure: Int;
begin
  Result := 0;
end;

function Steam_GSBSecurePreference: Int;
begin
  Result := 0;
end;

function Steam_GSGetSteamID: Int64;
begin
  Result := 0;
end;

function Steam_GSInitiateGameConnection(Data: Pointer; MaxData: Int; SteamID: Int64; ServerIP: UInt; ServerPort: UInt16; Secure: Boolean): Int;
begin
  Result := 0;
end;

function Steam_GSTerminateGameConnection(ServerIP: UInt; ServerPort: UInt16): Int;
begin
  Result := 0;
end;

function Steam_GetCommunityName: PLChar;
begin
  Result := nil;
end;

function Steam_GetGSUniverse: PLChar;
begin
  Result := nil;
end;

procedure Steam_HandleIncomingPacket(Data: Pointer; Size: Int; FromIP: Int; FromPort: UInt16);
begin

end;

procedure Steam_InitClient;
begin

end;

function Steam_NotifyBotConnect(Client: PClient): Boolean;
begin
  Result := False;
end;

function Steam_NotifyClientConnect(Client: PClient; Steam2Key: Pointer; Steam2Size: Int): Boolean;
begin
  Result := False;
end;

procedure Steam_NotifyClientDisconnect(Client: PClient);
begin

end;

procedure Steam_NotifyOfLevelChange;
begin

end;

procedure Steam_RunFrame;
begin

end;

procedure Steam_SetCVar(Key: PLChar; Value: PLChar);
begin

end;

procedure Steam_Shutdown;
begin

end;

procedure Steam_ShutdownClient;
begin

end;

procedure Steam_Steam3IDtoSteam2(SteamID: UInt64; Dest: Pointer);
begin

end;

function Steam_StringToSteamID(S: PLChar): UInt64;
begin
  Result := 0;
end;

{ TSteam3 }

constructor TSteam3.Create;
begin

end;

destructor TSteam3.Destroy;
begin
  inherited;
end;

end.
