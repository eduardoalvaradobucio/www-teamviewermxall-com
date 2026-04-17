<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
	<title>RPG Next Gen by Mihael Schmidt</title>
	<meta http-equiv="Content-Language" content="English" />
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="Mihael Schmidt"/>
	<meta name="description" content="IBM i resources" />
	<meta name="keywords" content="rpg,ile,rpg next gen,editor,java,as400,i5,iseries,system i,ibm,ibm i,JSON,editor,iledocs,xml,dom,rpgunit,ileunit,tree,properties,stomp,vaadin,osgi,web,jt400" />	
	<meta name="Robots" content="index,follow" />	<link href="bluebusiness.css" rel="stylesheet" type="text/css" />
	<link rel="alternate" type="application/rss+xml" title="RSS" href="https://blog.rpgnextgen.com/rss.xml" />
	<link rel="alternate" type="text/html" title="Downloads" href="https://www.rpgnextgen.com/index.php?content=download" />
	<link rel="alternate" type="text/html" title="Wiki" href="https://wiki.rpgnextgen.com" />
</head>

	<body>
		<div id="container">
		
			<div id="container-header">
	<div id="container-name">RPG <span>Next Gen</span></div>
	<div id="container-slogan">
		<a href="https://wiki.rpgnextgen.com"><img src="images/wiki48.png" alt="Wiki" title="Wiki"/></a>
		<a href="https://blog.rpgnextgen.com/rss.xml"><img src="images/rss-dark48.png" alt="RSS Feed" title="RSS Feed"/></a>
		<a href="https://blog.rpgnextgen.com"><img src="images/blog.png" alt="Weblog" title="Weblog"/></a>
	</div>
</div>
          
<div id="container-eyecatcher">
	<div id="container-navigation">
		<ul id="navigation">
			<li><a href="index.php">home</a></li>
			<li><a href="index.php?content=examples">examples</a></li>
			<li><a href="index.php?content=download">downloads</a></li>
			<li><a href="index.php?content=links">links</a></li>
			<li><a href="index.php?content=about">about</a></li>
			<li><a href="index.php?content=contact">contact</a></li>
			<li><a href="index.php?content=sitemap">sitemap</a></li>
		</ul>
	</div>

	<img src="images/business_eyecatcher.jpg" alt="Business picture" /></div>
					
			<div id="container-content">

				<div id="content">
					<h1>JSON Utilities</h1>

<p>
	What is JSON? JSON is a way of passing data between application
	independent of the underlying programming language or platform.
</p>

<p>
	But you probably should have a look at the <a href="http://www.json.org">
	JSON site</a> and then come back.
</p>


<h2>JSON Service program</h2>
<p>
	The provided service program allows the creation, parsing, checking and 
	serializing/deserializing to/from stream files of JSON strings	through a 
	number of procedures. 
	
	See the <a href="index.php?content=examples">
	examples</a> section for an example on how to create a JSON string. 
</p>

<p>
	Most things like arrays, objects and null values are supported by this
	service program.
</p>

<p>
    The service program consists of multiple modules:
</p>
<ul>
    <li><a href="index.php?content=json_generator">JSON</a> &mdash; Main module and Generator</li>
    <li>JSON_ARR &mdash; Array support</li>
    <li><a href="index.php?content=json_checker">JSON_CHK</a> &mdash; Validator/Checker</li>
    <li><a href="index.php?content=json_checker_util">JSON_CUTIL</a> &mdash; Checker utilities</li>
    <li>JSON_PAR &mdash; Parser</li>
    <li>JSON_UTIL &mdash; Utilities</li>
</ul>


<h2>JSON and Java</h2>
<p>
	Java has many ways of dealing with JSON strings and most are 
	accomplished very easy.
</p>

<p>
	So, if Java can read JSON strings very easy and RPG can write
	JSON strings very easy then this makes a good combination for
	data exchange between RPG and Java.
</p>


<h2>Missing numeric (zoned / packed) data type</h2>
<p>
	For those who have to pass some numeric values which don't fit
	into the primitive data types int, long and double there is
	also the <a href="http://jt400.sourceforge.net">JTOpen project</a>
	with a lot of Java classes which can help in data exchange
	between Java and RPG. The biggest handicap is that Java does 
	not have data structures like RPG (which makes it easy to pass 
	multiple values in one parameter) and the ProgrammCall class of
	the toolbox only accepts 7 parameters (due to some API limitations).
</p>

<h3>Record Format Markup Language</h3>
<p>
	But there jumps RFML into the arena. RFML is a markup language to
	define record formats. These record formats can be filled  with the
	content (bytes) of a ProgramCall parameter and then be used in 
	the same way as an RPG data structure.
</p>

<p>
	RFML is quite universal as it can be used with
</p>

<ul>
	<li>ProgramCall parameters</li>
	<li>Userspaces</li>
	<li>Data Queues</li>
	<li>Data Areas</li>
	<li>Database Files</li>
</ul>

<h2>Limitations</h2>
<p>
	Objects and arrays are supported with "unlimited" cascading depth. The only
	limit is the memory available for the job.
</p>

<h2>License</h2>
<p>
	This library is licensed under the <a href="http://www.gnu.org/licenses/lgpl.html">
	GNU Lesser General Public License</a>.
</p>

<h2>Requirements</h2>
<p>
	The service program <a href="index.php?content=arraylist">ARRAYLIST</a> is 
	needed for this service program.
</p>

<h2>Documentation</h2>
<p>
	Documentation is provided by the open documentation library at the 
	<a href="http://iledocs.rpgnextgen.com">ILEDocs</a> website.
</p>

<h2>Download</h2>
<p>
	The source code of the service program can be found in the
	<a href="index.php?content=download#json">download section</a>.
</p>

<p>
	The source code to some examples can be found in the 
	<a href="index.php?content=examples">examples section</a>.
</p>

<h2>Source Code Repository</h2>
<p>
	The JSON source code is now checked into a SVN repository on Sourceforge.net.
</p>

<p class="code">https://svn.code.sf.net/u/fist/src/json</p>
				
         </div> <!-- CONTENT END -->


			<div id="border">
			
				<h4>Collab Sites</h4>
<p>
	<a href="https://www.bender-dv.de">Dieter Bender DV</a> <br/>
	<a href="https://www.tools400.de">Thomas Raddatz</a><br/>
	<a href="https://www.pub400.com">Pub400 - public IBM i</a>
</p><h4>Projects</h4>
<ul id="subnavigation">
	<li><a href="index.php?content=arraylist">ArrayList</a></li>
    <li><a href="https://codenotes.rpgnextgen.com">CodeNotes</a></li>
	<li><a href="http://wiki.midrange.com/index.php/Flat_File_Parser">Flat File Parser</a></li>
	<li><a href="index.php?content=input">Input Providers</a></li>
	<li><a href="https://bitbucket.org/m1hael/iledocs">ILEDocs</a></li>
	<li><a href="https://bitbucket.org/m1hael/ipkg">iPKG</a></li>
	<li><a href="index.php?content=json">JSON Utilities</a></li>
	<li><a href="https://bitbucket.org/m1hael/keycloak-ibmi-user-storage">Keycloak IBM i User Storage</a></li>
	<li><a href="index.php?content=libtree">libtree</a></li>
	<li><a href="index.php?content=llist">Linked List</a></li>
	<li><a href="index.php?content=lutil">Linked List Utilities</a></li>
	<li><a href="index.php?content=lmap">Linked Map</a></li>
	<li><a href="https://bitbucket.org/m1hael/message">Message</a></li>
	<li><a href="index.php?content=parmeval">Parameter Evaluation</a></li>
	<li><a href="index.php?content=properties">Properties</a></li>
	<li><a href="index.php?content=stdlib">StdLib functions</a></li>
	<li><a href="https://bitbucket.org/m1hael/stream">Streaming API for ILE</a></li>
	<li><a href="https://bitbucket.org/m1hael/stomp">STOMP Client for ILE</a></li>
	<li><a href="https://bitbucket.org/m1hael/template-engine">Template Engine</a></li>
	<li><a href="index.php?content=unittest">Unit Testing for RPG</a></li>
</ul>
				
				<hr/>
				
				<h4>Last updated</h4>
				<p id="last_updated">2025-11-27</p>
				
				
			</div>

			</div>

			<div id="container-footer">
	<div id="footer">
		<div>
			<a href="http://www.christian-pansch.de" title="Webdesign Bremen">Design by christian-pansch.de</a>
		</div>
		
		<div>All brand names, product names or trademarks belong to their respective holders.</div>
		
		<div>&copy; 2007-2023 Mihael Schmidt - All rights reserved.</div>
		
	</div>
</div>
			
		</div> <!-- ENDE container -->
	</body>
</html>
