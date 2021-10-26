print("Welcome to an example lua script hosted on the cheat engine website")

local f=createForm(false)
f.position=poScreenCenter
f.BorderStyle=bsNone
f.Color=0x000100
f.OnClose=function(f)
  return caFree
end

local i=createImage(f)
i.align=alClient

local int=getInternet()
local logostr=int.getURL("http://cheatengine.org/celogo.png")
int.destroy()

local ss=createStringStream(logostr)
i.Picture.LoadFromStream(ss)
ss.destroy()

i.transparent=true
i.stretch=true
i.OnMouseMove=function(s) s.Parent.dragNow() end

local b=createButton(f)
b.caption="Close"
b.AnchorSideLeft.Side=asrCenter
b.AnchorSideLeft.Control=f
b.AnchorSideBottom.Side=asrBottom
b.AnchorSideBottom.Control=f
b.Anchors="[akLeft, akBottom]"
b.OnClick=function (s) b.Parent.close() end

f.setLayeredAttributes(0x000100, 230, LWA_COLORKEY | LWA_ALPHA )
f.show()


