# Webapp.ahk
"AHK-Webkit" / Webapp.ahk - Library for developing web-based apps with AutoHotkey. (Actually uses IE [Trident])  
  
## Getting started
Webapp.ahk projects should have one AutoHotkey script (*.ahk) file. See [Example.ahk](src/Example.ahk). This file must have the following in the header:  
  
```AHK
#Include Lib\Webapp.ahk
__Webapp_AppStart:
;<< Header End >>
```  
  
Note: Do not change the working directory; Webapp.ahk handles it. Aurelain's Exo is planned to be intergrated into Webapp.ahk. Custom functions maybe added easily. See the provided examples html and ahk files.  
  
A Webapp.ahk project must have a `webapp.json` configuration file.  
  
```JSON
{
  "name":           "My App",
  "width":          640,
  "height":         480,
  "protocol":       "app",
  "protocol_call":  "app_call",
  "html_url":       "index.html"
}
```

- `Width` & `Height`: Webapp.ahk allows window resizing just like any other application. The `width` and `height` option here is to set the application's starting size.
- The `name` option is the text that will be displayed in the title bar. It can be changed on run-time with `setAppName()`. 
- The `html_url` option is the starting HTML file for the App to launch with. It defaults to `index.html` if none is specified.
- The `protocol` option is for filter URL prefixes such as whether to run a function when a link like `app://msgbox/hello` is clicked. 
- The `protocol_call` option is the name of the function in your AutoHotkey that will run in these cases.  

Note: For example, if `protocol` is set to `myapp` and a `myapp://test/1234` link is clicked, the set `protocol_call` funtion will be called and will receive `test/1234` as its first argument. If `protocol` is set to `*`, the set `protocol_call` funtion will run for **ANY** link clicked and it will receive `myapp://test/1234` (the whole URL) as its first argument. This is not recommended for most cases, as links with `href="#"` will also trigger the function (usually unwanted behaviour).