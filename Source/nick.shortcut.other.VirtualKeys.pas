unit nick.shortcut.other.VirtualKeys;

interface

uses
  {$IFDEF VER220}
  Windows;
  {$ELSE}
  Winapi.Windows;
  {$ENDIF}

type
  {$SCOPEDENUMS ON}
  TCheck = (Elements, Matrix);
  TChecks = set of TCheck;

type
  TVirtualKeyDetail = record
    Value : Byte;
    ConstantName : string;
    Description : string;
    CheckedBy : TChecks;
  end;

const
  TModifterCheckingOrder : array[0..7] of Cardinal =
                           (
                             0,
                             MOD_SHIFT,
                             MOD_CONTROL,
                             MOD_CONTROL or MOD_SHIFT,
                             MOD_ALT,
                             MOD_ALT or MOD_SHIFT,
                             MOD_ALT or MOD_CONTROL,
                             MOD_ALT or MOD_CONTROL or MOD_SHIFT
                           );

const
  // http://msdn.microsoft.com/en-us/library/windows/desktop/dd375731(v=vs.85).aspx
  TVirtualKeys : array[0..256] of TVirtualKeyDetail =
                  (
                    ( Value:$01; ConstantName: 'VK_LBUTTON'; Description:'Left mouse button'; CheckedBy: []; ),
                    ( Value:$02; ConstantName: 'VK_RBUTTON'; Description:'Right mouse button'; CheckedBy: []; ),
                    ( Value:$03; ConstantName: 'VK_CANCEL'; Description:'Control-break processing'; CheckedBy: []; ),
                    ( Value:$04; ConstantName: 'VK_MBUTTON'; Description:'Middle mouse button (three-button mouse)'; CheckedBy: []; ),
                    ( Value:$05; ConstantName: 'VK_XBUTTON1'; Description:'X1 mouse button'; CheckedBy: []; ),
                    ( Value:$06; ConstantName: 'VK_XBUTTON2'; Description:'X2 mouse button'; CheckedBy: []; ),
                    ( Value:$07; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$08; ConstantName: 'VK_BACK'; Description:'BACKSPACE key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$09; ConstantName: 'VK_TAB'; Description:'TAB key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$0A; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$0B; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$0C; ConstantName: 'VK_CLEAR'; Description:'CLEAR key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$0D; ConstantName: 'VK_RETURN'; Description:'ENTER key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$0E; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$0F; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$10; ConstantName: 'VK_SHIFT'; Description:'SHIFT key'; CheckedBy: []; ),
                    ( Value:$11; ConstantName: 'VK_CONTROL'; Description:'CTRL key'; CheckedBy: []; ),
                    ( Value:$12; ConstantName: 'VK_MENU'; Description:'ALT key'; CheckedBy: []; ),
                    ( Value:$13; ConstantName: 'VK_PAUSE'; Description:'PAUSE key'; CheckedBy: []; ),
                    ( Value:$14; ConstantName: 'VK_CAPITAL'; Description:'CAPS LOCK key'; CheckedBy: []; ),
                    // Value $15 x3
                    ( Value:$15; ConstantName: 'VK_KANA'; Description:'IME Kana mode'; CheckedBy: []; ),
                    ( Value:$15; ConstantName: 'VK_HANGUEL'; Description:'IME Hanguel mode (maintained for compatibility; use VK_HANGUL)'; CheckedBy: []; ),
                    ( Value:$15; ConstantName: 'VK_HANGUL'; Description:'IME Hangul mode'; CheckedBy: []; ),
                    ( Value:$16; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$17; ConstantName: 'VK_JUNJA'; Description:'IME Junja mode'; CheckedBy: []; ),
                    ( Value:$18; ConstantName: 'VK_FINAL'; Description:'IME final mode'; CheckedBy: []; ),
                    ( Value:$19; ConstantName: 'VK_HANJA'; Description:'IME Hanja mode'; CheckedBy: []; ),
                    ( Value:$19; ConstantName: 'VK_KANJI'; Description:'IME Kanji mode'; CheckedBy: []; ),
                    ( Value:$1A; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$1B; ConstantName: 'VK_ESCAPE'; Description:'ESC key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$1C; ConstantName: 'VK_CONVERT'; Description:'IME convert'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$1D; ConstantName: 'VK_NONCONVERT'; Description:'IME nonconvert'; CheckedBy: []; ),
                    ( Value:$1E; ConstantName: 'VK_ACCEPT'; Description:'IME accept'; CheckedBy: []; ),
                    ( Value:$1F; ConstantName: 'VK_MODECHANGE'; Description:'IME mode change request'; CheckedBy: []; ),
                    ( Value:$20; ConstantName: 'VK_SPACE'; Description:'SPACEBAR'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$21; ConstantName: 'VK_PRIOR'; Description:'PAGE UP key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$22; ConstantName: 'VK_NEXT'; Description:'PAGE DOWN key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$23; ConstantName: 'VK_END'; Description:'END key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$24; ConstantName: 'VK_HOME'; Description:'HOME key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$25; ConstantName: 'VK_LEFT'; Description:'LEFT ARROW key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$26; ConstantName: 'VK_UP'; Description:'UP ARROW key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$27; ConstantName: 'VK_RIGHT'; Description:'RIGHT ARROW key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$28; ConstantName: 'VK_DOWN'; Description:'DOWN ARROW key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$29; ConstantName: 'VK_SELECT'; Description:'SELECT key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$2A; ConstantName: 'VK_PRINT'; Description:'PRINT key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$2B; ConstantName: 'VK_EXECUTE'; Description:'EXECUTE key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$2C; ConstantName: 'VK_SNAPSHOT'; Description:'PRINT SCREEN key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$2D; ConstantName: 'VK_INSERT'; Description:'INS key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$2E; ConstantName: 'VK_DELETE'; Description:'DEL key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$2F; ConstantName: 'VK_HELP'; Description:'HELP key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$30; ConstantName: ''; Description:'0 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$31; ConstantName: ''; Description:'1 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$32; ConstantName: ''; Description:'2 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$33; ConstantName: ''; Description:'3 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$34; ConstantName: ''; Description:'4 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$35; ConstantName: ''; Description:'5 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$36; ConstantName: ''; Description:'6 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$37; ConstantName: ''; Description:'7 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$38; ConstantName: ''; Description:'8 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$39; ConstantName: ''; Description:'9 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$3A; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$3B; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$3C; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$3D; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$3E; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$3F; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$40; ConstantName: ''; Description:'Undefined'; CheckedBy: []; ),
                    ( Value:$41; ConstantName: ''; Description:'A key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$42; ConstantName: ''; Description:'B key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$43; ConstantName: ''; Description:'C key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$44; ConstantName: ''; Description:'D key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$45; ConstantName: ''; Description:'E key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$46; ConstantName: ''; Description:'F key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$47; ConstantName: ''; Description:'G key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$48; ConstantName: ''; Description:'H key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$49; ConstantName: ''; Description:'I key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$4A; ConstantName: ''; Description:'J key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$4B; ConstantName: ''; Description:'K key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$4C; ConstantName: ''; Description:'L key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$4D; ConstantName: ''; Description:'M key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$4E; ConstantName: ''; Description:'N key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$4F; ConstantName: ''; Description:'O key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$50; ConstantName: ''; Description:'P key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$51; ConstantName: ''; Description:'Q key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$52; ConstantName: ''; Description:'R key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$53; ConstantName: ''; Description:'S key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$54; ConstantName: ''; Description:'T key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$55; ConstantName: ''; Description:'U key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$56; ConstantName: ''; Description:'V key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$57; ConstantName: ''; Description:'W key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$58; ConstantName: ''; Description:'X key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$59; ConstantName: ''; Description:'Y key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$5A; ConstantName: ''; Description:'Z key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$5B; ConstantName: 'VK_LWIN'; Description:'Left Windows key (Natural keyboard)'; CheckedBy: []; ),
                    ( Value:$5C; ConstantName: 'VK_RWIN'; Description:'Right Windows key (Natural keyboard)'; CheckedBy: []; ),
                    ( Value:$5D; ConstantName: 'VK_APPS'; Description:'Applications key (Natural keyboard)'; CheckedBy: []; ),
                    ( Value:$5E; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$5F; ConstantName: 'VK_SLEEP'; Description:'Computer Sleep key'; CheckedBy: []; ),
                    ( Value:$60; ConstantName: 'VK_NUMPAD0'; Description:'Numeric keypad 0 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$61; ConstantName: 'VK_NUMPAD1'; Description:'Numeric keypad 1 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$62; ConstantName: 'VK_NUMPAD2'; Description:'Numeric keypad 2 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$63; ConstantName: 'VK_NUMPAD3'; Description:'Numeric keypad 3 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$64; ConstantName: 'VK_NUMPAD4'; Description:'Numeric keypad 4 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$65; ConstantName: 'VK_NUMPAD5'; Description:'Numeric keypad 5 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$66; ConstantName: 'VK_NUMPAD6'; Description:'Numeric keypad 6 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$67; ConstantName: 'VK_NUMPAD7'; Description:'Numeric keypad 7 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$68; ConstantName: 'VK_NUMPAD8'; Description:'Numeric keypad 8 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$69; ConstantName: 'VK_NUMPAD9'; Description:'Numeric keypad 9 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$6A; ConstantName: 'VK_MULTIPLY'; Description:'Multiply key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$6B; ConstantName: 'VK_ADD'; Description:'Add key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$6C; ConstantName: 'VK_SEPARATOR'; Description:'Separator key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$6D; ConstantName: 'VK_SUBTRACT'; Description:'Subtract key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$6E; ConstantName: 'VK_DECIMAL'; Description:'Decimal key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$6F; ConstantName: 'VK_DIVIDE'; Description:'Divide key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$70; ConstantName: 'VK_F1'; Description:'F1 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$71; ConstantName: 'VK_F2'; Description:'F2 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$72; ConstantName: 'VK_F3'; Description:'F3 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$73; ConstantName: 'VK_F4'; Description:'F4 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$74; ConstantName: 'VK_F5'; Description:'F5 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$75; ConstantName: 'VK_F6'; Description:'F6 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$76; ConstantName: 'VK_F7'; Description:'F7 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$77; ConstantName: 'VK_F8'; Description:'F8 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$78; ConstantName: 'VK_F9'; Description:'F9 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$79; ConstantName: 'VK_F10'; Description:'F10 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$7A; ConstantName: 'VK_F11'; Description:'F11 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$7B; ConstantName: 'VK_F12'; Description:'F12 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$7C; ConstantName: 'VK_F13'; Description:'F13 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$7D; ConstantName: 'VK_F14'; Description:'F14 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$7E; ConstantName: 'VK_F15'; Description:'F15 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$7F; ConstantName: 'VK_F16'; Description:'F16 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$80; ConstantName: 'VK_F17'; Description:'F17 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$81; ConstantName: 'VK_F18'; Description:'F18 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$82; ConstantName: 'VK_F19'; Description:'F19 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$83; ConstantName: 'VK_F20'; Description:'F20 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$84; ConstantName: 'VK_F21'; Description:'F21 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$85; ConstantName: 'VK_F22'; Description:'F22 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$86; ConstantName: 'VK_F23'; Description:'F23 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$87; ConstantName: 'VK_F24'; Description:'F24 key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$88; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$89; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$8A; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$8B; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$8C; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$8D; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$8E; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$8F; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$90; ConstantName: 'VK_NUMLOCK'; Description:'NUM LOCK key'; CheckedBy: []; ),
                    ( Value:$91; ConstantName: 'VK_SCROLL'; Description:'SCROLL LOCK key'; CheckedBy: []; ),
                    ( Value:$92; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$93; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$94; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$95; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$96; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$97; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$98; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$99; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$9A; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$9B; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$9C; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$9D; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$9E; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$9F; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$A0; ConstantName: 'VK_LSHIFT'; Description:'Left SHIFT key'; CheckedBy: []; ),
                    ( Value:$A1; ConstantName: 'VK_RSHIFT'; Description:'Right SHIFT key'; CheckedBy: []; ),
                    ( Value:$A2; ConstantName: 'VK_LCONTROL'; Description:'Left CONTROL key'; CheckedBy: []; ),
                    ( Value:$A3; ConstantName: 'VK_RCONTROL'; Description:'Right CONTROL key'; CheckedBy: []; ),
                    ( Value:$A4; ConstantName: 'VK_LMENU'; Description:'Left MENU key'; CheckedBy: []; ),
                    ( Value:$A5; ConstantName: 'VK_RMENU'; Description:'Right MENU key'; CheckedBy: []; ),
                    ( Value:$A6; ConstantName: 'VK_BROWSER_BACK'; Description:'Browser Back key'; CheckedBy: []; ),
                    ( Value:$A7; ConstantName: 'VK_BROWSER_FORWARD'; Description:'Browser Forward key'; CheckedBy: []; ),
                    ( Value:$A8; ConstantName: 'VK_BROWSER_REFRESH'; Description:'Browser Refresh key'; CheckedBy: []; ),
                    ( Value:$A9; ConstantName: 'VK_BROWSER_STOP'; Description:'Browser Stop key'; CheckedBy: []; ),
                    ( Value:$AA; ConstantName: 'VK_BROWSER_SEARCH'; Description:'Browser Search key'; CheckedBy: []; ),
                    ( Value:$AB; ConstantName: 'VK_BROWSER_FAVORITES'; Description:'Browser Favorites key'; CheckedBy: []; ),
                    ( Value:$AC; ConstantName: 'VK_BROWSER_HOME'; Description:'Browser Start and Home key'; CheckedBy: []; ),
                    ( Value:$AD; ConstantName: 'VK_VOLUME_MUTE'; Description:'Volume Mute key'; CheckedBy: []; ),
                    ( Value:$AE; ConstantName: 'VK_VOLUME_DOWN'; Description:'Volume Down key'; CheckedBy: []; ),
                    ( Value:$AF; ConstantName: 'VK_VOLUME_UP'; Description:'Volume Up key'; CheckedBy: []; ),
                    ( Value:$B0; ConstantName: 'VK_MEDIA_NEXT_TRACK'; Description:'Next Track key'; CheckedBy: []; ),
                    ( Value:$B1; ConstantName: 'VK_MEDIA_PREV_TRACK'; Description:'Previous Track key'; CheckedBy: []; ),
                    ( Value:$B2; ConstantName: 'VK_MEDIA_STOP'; Description:'Stop Media key'; CheckedBy: []; ),
                    ( Value:$B3; ConstantName: 'VK_MEDIA_PLAY_PAUSE'; Description:'Play/Pause Media key'; CheckedBy: []; ),
                    ( Value:$B4; ConstantName: 'VK_LAUNCH_MAIL'; Description:'Start Mail key'; CheckedBy: []; ),
                    ( Value:$B5; ConstantName: 'VK_LAUNCH_MEDIA_SELECT'; Description:'Select Media key'; CheckedBy: []; ),
                    ( Value:$B6; ConstantName: 'VK_LAUNCH_APP1'; Description:'Start Application 1 key'; CheckedBy: []; ),
                    ( Value:$B7; ConstantName: 'VK_LAUNCH_APP2'; Description:'Start Application 2 key'; CheckedBy: []; ),
                    ( Value:$B8; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$B9; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$BA; ConstantName: 'VK_OEM_1'; Description:'Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the '';:'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$BB; ConstantName: 'VK_OEM_PLUS'; Description:'For any country/region, the ''+'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$BC; ConstantName: 'VK_OEM_COMMA'; Description:'For any country/region, the '','' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$BD; ConstantName: 'VK_OEM_MINUS'; Description:'For any country/region, the ''-'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$BE; ConstantName: 'VK_OEM_PERIOD'; Description:'For any country/region, the ''.'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$BF; ConstantName: 'VK_OEM_2'; Description:'Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the ''/?'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$C0; ConstantName: 'VK_OEM_3'; Description:'Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the ''`~'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$C1; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C2; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C3; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C4; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C5; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C6; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C7; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C8; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$C9; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$CA; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$CB; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$CC; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$CD; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$CE; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$CF; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D0; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D1; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D2; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D3; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D4; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D5; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D6; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D7; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$D8; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$D9; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$DA; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$DB; ConstantName: 'VK_OEM_4'; Description:'Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the ''[{'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$DC; ConstantName: 'VK_OEM_5'; Description:'Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the ''\|'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$DD; ConstantName: 'VK_OEM_6'; Description:'Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the '']}'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$DE; ConstantName: 'VK_OEM_7'; Description:'Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the ''single-quote/double-quote'' key'; CheckedBy: [TCheck.Elements, TCheck.Matrix]; ),
                    ( Value:$DF; ConstantName: 'VK_OEM_8'; Description:'Used for miscellaneous characters; it can vary by keyboard.'; CheckedBy: []; ),
                    ( Value:$E0; ConstantName: ''; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$E1; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$E2; ConstantName: 'VK_OEM_102'; Description:'Either the angle bracket key or the backslash key on the RT 102-key keyboard'; CheckedBy: []; ),
                    ( Value:$E3; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$E4; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$E5; ConstantName: 'VK_PROCESSKEY'; Description:'IME PROCESS key'; CheckedBy: []; ),
                    ( Value:$E6; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$E7; ConstantName: 'VK_PACKET'; Description:'Used to pass Unicode characters as if they were keystrokes. The VK_PACKET key is the low word of a 32-bit Virtual Key value used for non-keyboard input methods. For more information, see Remark Value in KEYBDINPUT,SendInput, WM_KEYDOWN, and WM_KEYUP'; CheckedBy: []; ),
                    ( Value:$E8; ConstantName: ''; Description:'Unassigned'; CheckedBy: []; ),
                    ( Value:$E9; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$EA; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$EB; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$EC; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$ED; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$EE; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$EF; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$F0; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$F1; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$F2; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$F3; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$F4; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$F5; ConstantName: ''; Description:'OEM specific'; CheckedBy: []; ),
                    ( Value:$F6; ConstantName: 'VK_ATTN'; Description:'Attn key'; CheckedBy: []; ),
                    ( Value:$F7; ConstantName: 'VK_CRSEL'; Description:'CrSel key'; CheckedBy: []; ),
                    ( Value:$F8; ConstantName: 'VK_EXSEL'; Description:'ExSel key'; CheckedBy: []; ),
                    ( Value:$F9; ConstantName: 'VK_EREOF'; Description:'Erase EOF key'; CheckedBy: []; ),
                    ( Value:$FA; ConstantName: 'VK_PLAY'; Description:'Play key'; CheckedBy: []; ),
                    ( Value:$FB; ConstantName: 'VK_ZOOM'; Description:'Zoom key'; CheckedBy: []; ),
                    ( Value:$FC; ConstantName: 'VK_NONAME'; Description:'Reserved'; CheckedBy: []; ),
                    ( Value:$FD; ConstantName: 'VK_PA1'; Description:'PA1 key'; CheckedBy: []; ),
                    ( Value:$FE; ConstantName: 'VK_OEM_CLEAR'; Description:'Clear key'; CheckedBy: []; )
                  );

implementation

end.

