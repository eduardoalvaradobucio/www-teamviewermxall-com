<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="alternate" title="Recently Updated Pike Modules" 
href="http://modules.gotpike.org/rss/recent" type="application/rss+xml">
<title>pike module repository: Public.Web.FCGI</title>
<script language="JavaScript">
	function toggleVisibility( what )
	{
		node = document.getElementById( "info" + what );
		link = document.getElementById(  "link" + what );
		if(node.style.display == 'block')
		{
			node.style.display = 'none';
			link.src = '/static/images/unfold.gif';
		}
		else
		{
			node.style.display = 'block';
			link.src = '/static/images/fold.gif';
		}
	}
</script>
</head>
<body>
<table>
<tr>
<td>
<font face="helvetica, arial, sans-serif">
<img src="/static/images/pike_character.png">
<br>
<a href="/"><img src="/static/images/home.gif" border=0 width=32 
height=32 alt="Home"></a>&nbsp;<font 
size=+3>modules.gotpike.org</font>



<form action="/auth/login" method="post">
<table>
  <tr>
  <td>
    <font size="-2" face="helvetica, arial, sans-serif">
    Username: <input type="text" size="10" name="username"/>
    Password: <input type="password" size="10" name="password"/>
	<input type="hidden" name="return_to" value="/"/>
    <input type="submit" name="action" value="Login"/> 
    </font>
  </td>
  <td>
    <font size="-2" face="helvetica, arial, sans-serif">
    [<a href="/register">Create Account</a>]<br>
    [<a href="/auth/forgotpassword">Forgot Password?</a>]
    </font>
  </td>
  </tr>
</table>
</form>

</font>
</td>
</tr>
<tr>
<td>

<table cellspacing="15">
<tr><td valign="top" width="25%">
<font face="helvetica,arial,sanserif">
<p>
<b>Modules</b> <p>
<a href="/index/ADT">ADT</a><br><a href="/index/Database">Database</a><br><a href="/module/GTK2">GTK2</a><br><a href="/index/GUI">GUI</a><br><a href="/index/IP">IP</a><br><a href="/module/PiJAX">PiJAX</a><br><a href="/index/Public">Public</a><br><a href="/index/Sql">Sql</a><br><a href="/index/Stdio">Stdio</a><br><a href="/module/Subversion">Subversion</a><br><a href="/index/System">System</a><br><a href="/index/Tools">Tools</a><br><a href="/module/Xosd">Xosd</a><br><a href="/module/lua">lua</a><br><a href="/module/v4l2">v4l2</a><br><a href="/module/wx">wx</a><br>
<p/>
<b>Recent Changes</b>
<p>


<a href="http://modules.gotpike.org/module/Public.USB?selected=1.0">Public.USB 1.0</a><br>

<a href="http://modules.gotpike.org/module/Public.Parser.XML2?selected=1.50">Public.Parser.XML2 1.50</a><br>

<a href="http://modules.gotpike.org/module/Public.ZeroMQ?selected=1.1">Public.ZeroMQ 1.1</a><br>

<a href="http://modules.gotpike.org/module/Public.Template.Mustache?selected=1.0">Public.Template.Mustache 1.0</a><br>

<a href="http://modules.gotpike.org/module/Public.Protocols.XMPP?selected=1.4">Public.Protocols.XMPP 1.4</a><br>


<p>
<b>Popular Downloads</b>
<p>


<a href="http://modules.gotpike.org/module/Public.Parser.JSON2?selected=1.0">Public.Parser.JSON2 1.0</a><br>

<a href="http://modules.gotpike.org/module/Public.Parser.JSON?selected=0.2">Public.Parser.JSON 0.2</a><br>

<a href="http://modules.gotpike.org/module/GTK2?selected=2.23">GTK2 2.23</a><br>

<a href="http://modules.gotpike.org/module/Public.Web.FCGI?selected=1.8">Public.Web.FCGI 1.8</a><br>

<a href="http://modules.gotpike.org/module/Public.Parser.XML2?selected=1.48">Public.Parser.XML2 1.48</a><br>


</font>
 </td>
<td valign="top">
<font face="helvetica,arial,sanserif">
<!-- begin page content -->
<font color="red"><i></i></font><br/>

<!-- beginning of module page -->
<table>
<tr>
<td width="*" valign="top">

<!-- begin content box : Module Information -->
<table bgcolor=#cccccc cellspacing=5 cellpadding=5 width=100%>
<tr><td cellpadding=0 cellspacing=0 bgcolor=#cccccc><font
face="helvetica,arial">
<b>Module Information</b><br/>
Public.Web.FCGI
<p/>
Module for creating FastCGI apps in pike.
<p/>


No Source Control configured.


</td>
</tr>
</table>
<!-- end content box  -->
</td>

<td width="30%" valign="top">

<!-- begin content box : Module Authors -->
<table bgcolor=#cccccc cellspacing=5 cellpadding=5 width=100%>
<tr><td cellpadding=0 cellspacing=0 bgcolor=#cccccc><font
face="helvetica,arial">
<b>Module Authors</b><br/>

Owner<br/>
Adam Montague

<p/>

Contributors<br/>


No Contributors yet.

</td>
</tr>
</table>
<!-- end content box  -->


</td>
</tr>
<tr>
<td colspan="2">

<!-- begin content box : Module Versions -->
<table bgcolor=#cccccc cellspacing=5 cellpadding=5 width=100%>
<tr><td cellpadding=0 cellspacing=0 bgcolor=#cccccc><font
face="helvetica,arial">
<b>Module Versions</b><br/>


Most recent version: <b>1.8</b> &nbsp;


Selected version: <b>1.8</b> Added: <b>1 Jun 2006</b>
<br/>

<br/>

Fix headers to not be shared between multiple FCGI objects.
<p/>
<b>Depends on:</b>
<p/>
<table>

<tr><td>Pike </td><td>7.6.0 - 7.7.99</td><td>Required</td>
</tr>


</table>
<p/>
<p/>
<b>Files in Root Directory:</b><br/>
<a href="/view_version_file/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8/util.h">util.h</a>
 &nbsp; <a href="/view_version_file/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8/module.pmod.in">module.pmod.in</a>
 &nbsp; <a href="/view_version_file/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8/FCGI.cmod">FCGI.cmod</a>
 &nbsp; <a href="/view_version_file/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8/configure">configure</a>
 &nbsp; <a href="/view_version_file/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8/Makefile.in">Makefile.in</a>
 &nbsp; <a href="/view_version_file/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8/configure.in">configure.in</a>

<p/>

[ <a href="http://modules.gotpike.org/download/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8.tar.gz" title="Download the original source distribution for this version.">Download</a> ]


[ <span title="A pre-built install of this module is not available. 
Please use the source download instead.">Download PMAR</span> ]


[ <a href="/module_modref/Public.Web.FCGI/1.8/Public_Web_FCGI-1.8.tar.gz">Module Documentation</a> ]

[ <a href="http://wiki.gotpike.org/PikeModules/Module/Public.Web.FCGI">Wiki this Module</a> ]
 


<p/>
<b>Other Versions:</b><br/>
<table>







<tr>
    <td><a id='info.1.7' onclick="toggleVisibility('changes.1.7')"><img 
id="linkchanges.1.7" src="/static/images/unfold.gif" border="0"></a> 
1.7</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-05-25 15:40</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.7">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.7">
  Fix encode_url()
</div>
</td></tr>





<tr>
    <td><a id='info.1.6' onclick="toggleVisibility('changes.1.6')"><img 
id="linkchanges.1.6" src="/static/images/unfold.gif" border="0"></a> 
1.6</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-05-23 20:03</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.6">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.6">
  Oops, make sure to actually use additional arguments sent to write().
</div>
</td></tr>





<tr>
    <td><a id='info.1.5' onclick="toggleVisibility('changes.1.5')"><img 
id="linkchanges.1.5" src="/static/images/unfold.gif" border="0"></a> 
1.5</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-05-23 16:41</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.5">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.5">
  Get rid of dumb \"optimization\" that didn't really make things noticably faster, and prevented you from passing around a pointer to the write() method.
</div>
</td></tr>





<tr>
    <td><a id='info.1.4' onclick="toggleVisibility('changes.1.4')"><img 
id="linkchanges.1.4" src="/static/images/unfold.gif" border="0"></a> 
1.4</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-05-15 14:45</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.4">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.4">
  Allow finish() to be called before accept() without errors.  Optimized accept()'s parsing and creation of env.
</div>
</td></tr>





<tr>
    <td><a id='info.1.3' onclick="toggleVisibility('changes.1.3')"><img 
id="linkchanges.1.3" src="/static/images/unfold.gif" border="0"></a> 
1.3</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-05-10 13:48</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.3">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.3">
  Consistant method names, add encode_url.
</div>
</td></tr>





<tr>
    <td><a id='info.1.2' onclick="toggleVisibility('changes.1.2')"><img 
id="linkchanges.1.2" src="/static/images/unfold.gif" border="0"></a> 
1.2</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-05-09 16:02</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.2">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.2">
  Added a C decode_http_string method, and a handy set_cookie method.
</div>
</td></tr>





<tr>
    <td><a id='info.1.1' onclick="toggleVisibility('changes.1.1')"><img 
id="linkchanges.1.1" src="/static/images/unfold.gif" border="0"></a> 
1.1</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-05-05 15:39</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.1">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.1">
  Fix a threading problem, and add convenience of get, post, cookies, files, headers mappings and status variable.
</div>
</td></tr>





<tr>
    <td><a id='info.1.0.4' onclick="toggleVisibility('changes.1.0.4')"><img 
id="linkchanges.1.0.4" src="/static/images/unfold.gif" border="0"></a> 
1.0.4</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-04-18 12:15</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.0.4">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.0.4">
  Make accept() return immediately if shutdown() is called.
</div>
</td></tr>





<tr>
    <td><a id='info.1.0.3' onclick="toggleVisibility('changes.1.0.3')"><img 
id="linkchanges.1.0.3" src="/static/images/unfold.gif" border="0"></a> 
1.0.3</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2006-02-18 12:11</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.0.3">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.0.3">
  Fix a crash bug when multi-threaded and under heavy load.\r\nAllow threads in accept() to exit gracefully when shutdown() is called.
</div>
</td></tr>





<tr>
    <td><a id='info.1.0.2' onclick="toggleVisibility('changes.1.0.2')"><img 
id="linkchanges.1.0.2" src="/static/images/unfold.gif" border="0"></a> 
1.0.2</td>
<td> &nbsp; BSD </td>
<td> &nbsp; 2005-11-28 11:09</td>  
<td> &nbsp; <a href="/module/Public.Web.FCGI?selected=1.0.2">Select</a></td></tr>
<tr><td colspan=4>
<div style="display:none;margin-left:20px" id="infochanges.1.0.2">
  
</div>
</td></tr>



</table>
</td>
</tr>
</table>
<!-- end content box  -->

<p/>


</td>
</tr>
</table>


<br>



<!-- end of module page -->


<!-- end page content -->
</td>
</tr>
</table>

</td>
</tr>
<tr>
<td>
<font face="helvetica, arial,sanserif">
<a href="http://www.gotpike.org">gotpike.org</a> | 
Copyright &copy; 2004 - 2019 | Pike is a trademark of 
Department of Computer and Information Science,
                      Link&ouml;ping University
</font>
</td>
</tr>
</table>
</body>
</html>
