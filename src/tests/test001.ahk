﻿;#Include Webapp.ahk
#Include Webapp.ex2.ahk

HTML_Page =
( Ltrim Join
<!DOCTYPE html>
<html>
	<head>
		<style>
			html{margin:0;padding:0;overflow:auto;}
			body{font-family:sans-serif;background-color:#dde4ec;}
			#title{font-size:36px;}
			#corner{font-size:10px;position:absolute;top:8px;right:8px;}
			p{font-size:16px;background-color:#efefef;border:solid 1px #666;padding:4px;}
			#footer{text-align:center;}
		</style>
	</head>
	<body>
		<div id="title">Lorem Ipsum</div>
		<div id="corner">Welcome!</div>
		<p>The standard Lorem Ipsum passage, used since the 1500s</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		<textarea rows="4" cols="70" id="MyTextBox">1234567890-=\ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$^&*()_+|~</textarea>
		<p id="footer">
			<a href="%MYAPP_PROTOCOL%://msgbox/hello">Click me for a MsgBox</a>&nbsp;-&nbsp;
			<a href="NOPE://msgbox/hello">Click me for nothing</a>&nbsp;-&nbsp;
			<a href="%MYAPP_PROTOCOL%://soundplay/ding">Click me for a ding sound!</a><br>
			<a href="#" onclick="AHK('RunButton4_function')">Link using onlick instead</a>
			<span style="display:block;height:14px;">&nbsp;</span>
			<input type="button" id="MyButton1" value="Show Content in AHK MsgBox">
			<input type="button" id="MyButton2" value="Change Content with AHK">
			<input type="button" id="MyButton3" value="Greetings from AHK">
			<input type="button" id="MyButton4" value="AHK MsgBox using function" onclick="AHK('RunButton4_function')">
		</p>
	</body>
</html>
)

AppInstance := new Webapp("My App",640,480,HTML_Page)
;AppInstance := new Webapp("My App",640,480,"app","null",HTML_Page)
MsgBox % AppInstance.Name
/*Gui Default
Gui Margin, 0, 0
Gui +LastFound +Resize
cwb := new CWebView(1, "x0 y0 w640 h640", HTML_Page)
Gui Show, w640 h480, Test
*/


/*
cwb := new CWebView(1, "x0 y20 w250 h500", html, Func("JS_AHK"))
cwb.TranslateAccelerator := ["D", gui_KeyDown]
w := cwb.__Ptr.document.parentWindow
w.AHK := Func("JS_AHK")
 */