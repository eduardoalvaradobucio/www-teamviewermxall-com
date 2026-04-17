<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>COBOL software for JSON generation and parsing</title>
<meta name="keywords" content="cobol JSON, cobol, JSON, interface, IBM, HP, iSeries, AS400, UNIX, Linux, Fujitsu, BS2000, Micro Focus, mainframe, CICS, parser, generator, parse">
<meta name="description" content="The Redvers COBOL JSON Interface gives COBOL applications the ability to generate or parse JSON objects.">

<link href="css/cobol.css" rel="stylesheet">
<style>
<!--
#navList #navProducts a {
	background-position: bottom
}
#subList #subCobolJson a {
	background-position: bottom
}
#CobolJson a {
	background-position: right
}
#picSpace {
	background-image: url(images/cobol-json.png)
}
-->
</style>
</head>

<body>
<!-- Redvers COBOL JSON Interface -->

<header>
  <h1>Technical Solutions for COBOL</h1>

<a id="logo" href="https://www.redversconsulting.com/index.php" title="COBOL software for AES encryption, SHA hashing, XML and JSON generation &amp; parsing, digital signatures with public/private keys and source code obfuscation"><img src="images/logo.gif" width="84" height="100" alt="COBOL software for XML and JSON generation &amp; parsing, AES encryption, SHA hashing, digital signatures with public/private keys and source code obfuscation"></a>

</header>

<div id="wrapper">

  <nav>
  <ul id="navList">
    <li id="navHome"><a href="https://www.redversconsulting.com/index.php" title="Home Page: COBOL software for AES encryption, SHA hashing, XML and JSON generation &amp; parsing, digital signatures with public/private keys and source code obfuscation">Home</a></li>
    <li id="navProducts"><a href="https://www.redversconsulting.com/cobol-products.php" title="COBOL Software Products">Products</a></li>
    <li id="navServices"><a href="https://www.redversconsulting.com/services.php" title="Redvers Batch Optimisation Service">Services</a></li>
    <li id="navTools"><a href="https://www.cobol.org.uk/index.php" title="Redvers Open Source COBOL Tools">Tools</a></li>
    <li id="navAbout"><a href="https://www.redversconsulting.com/about.php" title="About Redvers Consulting">About Us</a></li>
    <li id="navContact"><a href="https://www.redversconsulting.com/contact.php" title="Contact Redvers Consulting">Contact</a></li>
  </ul>
  </nav>

  <ul id="products">
    <li id="Encryption"><a href="data_encryption.php" title="The Redvers Encryption Module gives COBOL applications the Advanced Encryption Standard (AES) algorithm to securely encrypt and decrypt confidential data using 128, 192 or 256 bit keys"><span>COBOL AES Encryption</span></a></li>
    <li id="Hashing"><a href="hashing_algorithm.php" title="The Redvers Hashing Algorithm gives COBOL applications the ability to generate SHA-1, SHA-2 or SHA-3 message digests for any data string or series of data strings"><span>COBOL Hashing Algorithm</span></a></li>
    <li id="CobolXml"><a href="cobol_xml_interface.php" title="The Redvers COBOL XML Interface gives COBOL applications fast efficient access to the world of XML and web services"><span>COBOL XML Interface</span></a></li>
    <li id="CobolJson"><a href="cobol_json_interface.php" title="The Redvers COBOL JSON Interface gives COBOL applications fast, efficient access to JSON objects"><span>COBOL JSON Interface</span></a></li>
    <li id="Signature"><a href="cobol_signature.php" title="The Redvers COBOL Signature software enables COBOL applications to securely communicate with blockchain and other messaging systems using standard digital signatures and PKI encryption"><span>COBOL Signature</span></a></li>
    <li id="Cloaking"><a href="cloaking_device.php" title="The Redvers Cloaking Device is a COBOL obfuscator that protects the intellectual property in COBOL source code"><span>COBOL Obfuscation</span></a></li>
  </ul> 
  <ul id="subList">
    <li id="subCobolJson"><a href="cobol_json_interface.php" title="The Redvers COBOL JSON Interface gives COBOL applications fast, efficient access to JSON objects">JSON Interface:</a></li>
    <li id="subFaq"><a href="cobol_json_faq.php" title="COBOL JSON Interface - Frequently Asked Questions">FAQ</a></li>
    <li id="subPricing"><a href="cobol_json_pricing.php" title="COBOL JSON Interface - Pricing">Pricing</a></li>
    <li id="subCase"><a href="cobol_json_case_study.php" title="COBOL JSON Interface - Case Study">Case Study</a></li>
    <li id="subTrial"><a href="cobol_json_free_trial.php" title="COBOL JSON Interface - Free Trial Download">Free Trial</a></li>
  </ul>

<div id="content">

<h2>Redvers COBOL JSON Interface</h2> 

<p><strong>The Redvers COBOL JSON Interface gives COBOL applications fast, efficient access to JSON objects and Java applications. This off-the-shelf software is written in pure COBOL and simply requires the coding of a COBOL record layout and CALL statement to generate or parse any JSON object.</strong></p><br>

<strong>Main features:</strong>
<ul>
  <li>Runs on all COBOL platforms</li>
  <li>Distributed in COBOL source code (&quot;cloaked&quot;)</li>
  <li>Generates and parses multiple dimension arrays (nested <code>OCCURS</code>)</li>
  <li>Easy maintenance</li>
  <li>Fast, efficient, professional and fully scalable</li>
  <li>No training needed for COBOL programmers</li>
  <li>Free schema to copybook build tool</li>
  <li>Runs in batch or on-line</li>
  <li><a href="cobol_json_free_trial.php" title="COBOL JSON Interface - Download a Free Trial">Free 30 day trial</a></li>
</ul>

<p>The <strong>Redvers COBOL JSON Interface</strong> operates at record level, intelligently building all necessary JSON object structures when generating and correctly interpreting object structures when parsing. This approach replaces complex object level application logic with a single <code>CALL</code> statement that passes the next logical record to/from the application.</p>

<p>Our interfaces are currently used by customers all over the world, running on <strong>iSeries/AS400</strong>, <strong>UNIX</strong>, <strong>HP</strong>, <strong>Linux</strong>, <strong>Fujitsu BS2000</strong>, <strong>Micro Focus</strong> and <strong>IBM mainframe</strong> platforms.</p>

<h3>How it Works</h3>
<p>Before a COBOL application generates or parses JSON, a <strong>COBOL Record Definition (CRD)</strong> is coded, consisting of a working storage field definition for each JSON object (the schema to copybook build tool can be used to create this). The CRD is then placed in the standard copybook library and a <code>COPY/INCLUDE</code> statement is added to the application code.</p>

<p>The CRD source code is also stored in the calling application so it can be passed to the interface routines in the <code>CALL</code>. This can either be done by coding the source into working storage or by reading the source from the copybook library at run time.</p>

<p>To <strong>generate</strong> JSON, the COBOL application populates the CRD and passes it to the generation subroutine (<strong>RCJSNGEN</strong>) with the CRD source in a <code>CALL</code> statement. <strong>RCJSNGEN</strong> then converts the COBOL data to JSON objects and returns the top level JSON object to the application.</p>

<p>To <strong>parse</strong> JSON, the application passes the JSON object and CRD source to the parser subroutine (<strong>RCJSNPAR</strong>) which returns the COBOL data in the CRD fields.</p>

<p>The generation process is illustrated below:</p>
<img src="images/cobol-json-flow.png" alt="COBOL JSON Interface Flowchart" height="480" width="480">

<p><em>Parsing is achieved in a similar way to the above, except the application passes the JSON object to <strong>RCJSNPAR</strong> which returns the COBOL data in the CRD.</em></p>

<h3>Technical Information</h3>
<p>The <strong>Redvers COBOL JSON Interface</strong> 2.1 programs are sold in COBOL source code form and are installed by copying to the site source code library and running the standard COBOL compiler. Compilation at client sites enables installation on multiple platforms and it ensures complete compatibility with all other COBOL applications on the platform.</p>
<p>Using source code also allows our customers to make changes to certain values that would otherwise remain fixed. These values are known as <strong>User Maintained Variables (UMV's)</strong> and they can be tuned to reduce storage requirements or to generate JSON in specific formats. Full details on all UMV's can be found in the product user guides.</p>
<p>In order to protect both clients and authors from unauthorized code changes, the subroutine source code has been &quot;cloaked&quot; using the <a href="cloaking_device.php" title="Redvers Cloaking Device">Redvers Cloaking Device</a>. This process makes no logical difference to the code but renders it unintelligible to humans.</p>
<p>The <strong>COBOL Record Definition (CRD)</strong> can be coded to generate or parse any JSON object. Very large objects are generated/parsed using multiple calls to the interface so that machine storage is kept to a minimum.</p>
<p>Generated objects conform to the <a href="https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf" title="ECMA-404 JSON Data Interchange Standard" class="externalText" target="_blank">JSON Data Interchange Standard</a> found on the <a href="https://www.json.org/" title="www.json.org" class="externalText" target="_blank">www.json.org</a> website.</p>
<p>Parsed objects are checked for syntax errors. In the event of an error, a message is returned, identifying the erroneous character position within the input string. No schema validation is performed.</p>
<p>JSON generation rate is <strong>9.6 megabytes per second</strong>; parsing rate is <strong>8.8 megabytes per second</strong>. All benchmark timings are based on an IBM zSeries mainframe running z/OS 1.10. Maximum on-line object size is <strong>99 megabytes</strong>; there is no maximum object size for batch applications.</p>

<h3>Sample Output</h3>
<p>An example of JSON produced by the <strong>Redvers COBOL JSON Interface</strong>:</p>
<img src="images/cobol-json-sample.png" alt="Sample JSON produced by the Redvers COBOL JSON Interface" height="400" width="480">

<table class="table470"><tr><td class="tableTdRight"><em>Download the COBOL source code that created this JSON object: </em></td><td class="tableTdDownSm"><a href="download.php?f=RCJGSAMP.txt" title="Download the COBOL source code that created this JSON object"></a></td></tr></table>

<p class="actionText"><a href="cobol_json_free_trial.php" title="Download a free 30 day trial of the Redvers COBOL JSON Interface here">Download a free 30 day trial here...</a></p>

</div>

<div id="picSpace">

<table class="table192"><tr><td class="tableTdRight"><a href="download.php?f=cobol_json_summ.pdf&amp;fc=RedversCobolJsonSummary.pdf" title="Download a PDF summary of the Redvers COBOL JSON Interface">PDF of these pages:</a> </td><td class="tableTdPdf"><a href="download.php?f=cobol_json_summ.pdf&amp;fc=RedversCobolJsonSummary.pdf" title="Download a PDF summary of the Redvers COBOL JSON Interface"></a></td></tr></table><br><br>

<p><em>&quot;Thank you very much for both an excellent solution and all help around my issues and questions&quot;</em></p><p class="rightText">SEB (Sweden)</p>

</div>

  <footer>
  <p>&copy; Redvers Consulting Ltd, 2001-2026, all rights reserved</p>
  <a href="https://validator.w3.org/check/referer" title="Valid HTML 1.0">HMTL</a>
  <a href="https://jigsaw.w3.org/css-validator/check/referer" title="Valid CSS">CSS</a>
</footer>
</div>
</body>
</html>