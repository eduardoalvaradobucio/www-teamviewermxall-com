<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>COBOL JSON Interface - Frequently Asked Questions</title>
<meta name="description" content="The Redvers COBOL JSON Interface Frequently Asked Questions.">

<link href="css/cobol.css" rel="stylesheet">
<style>
<!--
#navList #navProducts a {
	background-position: bottom
}
#subList #subFaq a {
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

  <h2>Redvers COBOL JSON Interface - Frequently Asked Questions</h2>

  <h4>Why have you written the interface in COBOL?</h4>
  <p>We've taken the unusual step of writing and delivering this product in the form of COBOL source code subroutines because we understand how important it is to have a product that is easily integrated with existing applications. If you need a product to interface COBOL with JSON then you must have COBOL programs and a COBOL compiler already.</p>
  <p>Another advantage is that people using the product will already be familiar with the terminology, characteristics and capabilities of COBOL based programs.</p>

  <h4>How do I install this software?</h4>
  <p>The <strong>Redvers COBOL JSON Interface</strong> programs are sold in COBOL source code form and are installed by copying to your site source code library and running your standard COBOL compiler. Compilation at client sites enables installation on multiple platforms and ensures complete compatibility with all other COBOL applications on the platform.</p>
<p>In order to protect both clients and ourselves from unauthorized code changes, the source code has been &quot;cloaked&quot; using our <a href="cloaking_device.php" title="Redvers Cloaking Device">Redvers Cloaking Device</a>. This process makes no logical difference to the code but renders it unintelligible to humans.</p>

  <h4>What are the technical limitations?</h4>
  <p>As the product is written and compiled as a site standard COBOL program, the limitations are the same as those placed on the calling application. Therefore, if an application uses a 16MB copybook layout with 5,000 fields, each requiring a 500 character JSON name, our subroutines can process it.</p>
  <p>In order to make the most efficient use of machine resources, several parameter variables (referred to in the user guides as User Maintained Variables) are defaulted to fairly modest values. These may be increased or decreased according to application/system requirements.</p>

  <h4>Is the interface compatible with ASCII as well as EBCDIC based character sets?</h4>
  <p>Yes, all our products run on ASCII and EBCDIC platforms. No code changes are necessary.</p>

  <h4>Is the interface compatible with sites using &quot;little-endian&quot; binary storage?</h4>
  <p>Yes, all our products will run on &quot;big-endian&quot; and &quot;little-endian&quot; platforms. No code changes are necessary.</p>

  <h4>What are the benchmark statistics?</h4>
  <p>JSON generation rate is <strong>9.6 megabytes per second</strong>; parsing rate is <strong>8.8 megabytes per second</strong>. All benchmark timings are based on an IBM zSeries mainframe running z/OS 1.10. Maximum object size is <strong>99,999,999</strong> bytes but there is no maximum object size for batch applications.</p>
  <p>Most applications will require I-O external to the interface in order to collect data for conversion to JSON or to update COBOL based files/databases from the JSON input. Therefore, as no I-O is performed by the interface, application run times are unlikely to be affected by the addition of the <strong>Redvers COBOL JSON Interface</strong>.</p>

  <h4>Will the parser validate the incoming JSON object?</h4>
  <p>The Redvers COBOL JSON parser issues an error message, identifying the erroneous character position within the input string, when an input JSON object contains JSON syntax errors. JSON syntax is defined in the <a href="https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf" title="ECMA-404 JSON Data Interchange Standard" class="externalText" target="_blank">JSON Data Interchange Standard</a> on the <a href="https://www.json.org/" title="www.json.org" class="externalText" target="_blank">www.json.org</a> website. No schema validation is performed.</p>


  <h4>Can a CRD be automatically generated from a JSON schema?</h4>
  <p>Redvers Consulting offers a free CRD building program called <strong>RCCRDJSN</strong>. This tool creates a base CRD from the information held in the input schema. In keeping with our other tools, this program is written in open source COBOL and is available from your Redvers account manager.</p>

  <h4>You haven't answered the question I had in mind.</h4>
  <p>If your question isn't listed above, please use our <a href="contact.php" title="Contact Redvers Consulting">Contact</a> page to ask any questions you may have and we will provide an answer as soon as possible.</p>

  <p class="actionText"><a href="cobol_json_free_trial.php" title="Download a free 30 day trial of the Redvers COBOL JSON Interface here">Download a free 30 day trial here...</a></p>

</div>

<div id="picSpace"></div>

  <footer>
  <p>&copy; Redvers Consulting Ltd, 2001-2026, all rights reserved</p>
  <a href="https://validator.w3.org/check/referer" title="Valid HTML 1.0">HMTL</a>
  <a href="https://jigsaw.w3.org/css-validator/check/referer" title="Valid CSS">CSS</a>
</footer>
</div>
</body>
</html>