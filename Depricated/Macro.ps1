#Make Google Doc's Macros.
#Turn to Headers, Bold, etc, inserting new table row. column



#import mouse_event
Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;
#left mouse click
[W.U32]::mouse_event(6,0,0,0,0);


