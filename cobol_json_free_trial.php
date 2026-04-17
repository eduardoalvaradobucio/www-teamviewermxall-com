<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>COBOL JSON Interface - Free Trial Download</title>
<meta name="description" content="Download a free 30 day trial of the Redvers COBOL JSON Interface.">

<link href="css/cobol.css" rel="stylesheet">
<style>
<!--
#navList #navProducts a {
	background-position: bottom
}
#subList #subTrial a {
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

<script>
<!--
function WAtrimIt(theString,leaveLeft,leaveRight) {
 if (!leaveLeft) {
 while (theString.charAt(0) == " ")
  theString = theString.substring(1);
 }
 if (!leaveRight) {
 while (theString.charAt(theString.length-1) == " ")
  theString = theString.substring(0,theString.length-1);
 }
 return theString;
}

function WAFV_GetValueFromInputType(formElement,inputType,trimWhite) {
 var value="";
 if (inputType == "select") {
 if (formElement.selectedIndex != -1 && formElement.options[formElement.selectedIndex].value && formElement.options[formElement.selectedIndex].value != "") {
  value = formElement.options[formElement.selectedIndex].value;
 }
 }
 else if (inputType == "checkbox") {
 if (formElement.length) {
  for (var x=0; x<formElement.length ; x++) {
  if (formElement[x].checked && formElement[x].value!="") {
   value = formElement[x].value;
   break;
  }
  }
 }
 else if (formElement.checked)
  value = formElement.value;
 }
 else if (inputType == "radio") {
 if (formElement.length) {
  for (var x=0; x<formElement.length; x++) {
  if (formElement[x].checked && formElement[x].value!="") {
   value = formElement[x].value;
   break;
  }
  }
 }
 else if (formElement.checked)
  value = formElement.value;
 }
 else if (inputType == "radiogroup") {
 for (var x=0; x<formElement.length; x++) {
  if (formElement[x].checked && formElement[x].value!="") {
  value = formElement[x].value;
  break;
  }
 }
 }
 else if (inputType == "iRite") {
  var theEditor = FCKeditorAPI.GetInstance(formElement.name) ;
  value = theEditor.GetXHTML(true);
 }
 else {
 var value = formElement.value;
 }
 if (trimWhite) {
 value = WAtrimIt(value);
 }
 return value;
}

function WAAddError(formElement,errorMsg,focusIt,stopIt) {
 if (document.WAFV_Error) {
	 document.WAFV_Error += "\n" + errorMsg;
 }
 else {
 document.WAFV_Error = errorMsg;
 }
 if (!document.WAFV_InvalidArray) {
 document.WAFV_InvalidArray = new Array();
 }
 document.WAFV_InvalidArray[document.WAFV_InvalidArray.length] = formElement;
 if (focusIt && !document.WAFV_Focus) {
	document.WAFV_Focus = focusIt;
 }

 if (stopIt == 1) {
	document.WAFV_Stop = true;
 }
 else if (stopIt == 2) {
	formElement.WAFV_Continue = true;
 }
 else if (stopIt == 3) {
	formElement.WAFV_Stop = true;
	formElement.WAFV_Continue = false;
 }
}

function WAValidateRQ(formElement,errorMsg,focusIt,stopIt,trimWhite,inputType) {
 var isValid = true;
 if (!document.WAFV_Stop && !formElement.WAFV_Stop) {
 var value=WAFV_GetValueFromInputType(formElement,inputType,trimWhite);
 if (value == "") {
	isValid = false;
 }
 }
 if (!isValid) {
 WAAddError(formElement,errorMsg,focusIt,stopIt);
 }
}
function WAValidateEP(formElement,value,errorMsg,focusIt,stopIt,required) {
 var isValid = true;
 if ((!document.WAFV_Stop && !formElement.WAFV_Stop) && !(!required && value=="")) {
 value = value.toLowerCase();
 var knownDomsPat = /^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum)$/i;
 var epostPat = /^(.+)@(.+)$/i;
 var accepted = "\[^\\s\\(\\)><@,;:\\\\\\\"\\.\\[\\]\]+";
 var quotedUser = "(\"[^\"]*\")";
 var ipDomainPat = /^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/i;
 var section = "(" + accepted + "|" + quotedUser + ")";
 var userPat = new RegExp("^" + section + "(\\." + section + ")*$");
 var domainPat = new RegExp("^" + accepted + "(\\." + accepted +")*$");
 var theMatch = value.match(epostPat);
 var acceptedPat = new RegExp("^" + accepted + "$");
 var userName = "";
 var domainName = "";
 if (theMatch==null) {
  isValid = false;
 }
 else {
  userName = theMatch[1];
  domainName = theMatch[2];
	 var domArr = domainName.split(".");
	 var IPArray = domainName.match(ipDomainPat);
  for (x=0; x < userName.length; x++) {
  if ((userName.charCodeAt(x) > 127 && userName.charCodeAt(x) < 192) || userName.charCodeAt(x) > 255) {
   isValid = false;
  }
  }
  for (x=0; x < domainName.length; x++) {
  if ((domainName.charCodeAt(x) > 127 && domainName.charCodeAt(x) < 192) || domainName.charCodeAt(x) > 255) {
   isValid = false;
  }
  }
  if (userName.match(userPat) == null) {
  isValid = false;
  }
  if (IPArray != null) {
  for (var x=1; x<=4; x++) {
   if (IPArray[x] > 255) {
   isValid = false;
   }
  }
  }
  for (x=0; x < domArr.length; x++) {
  if (domArr[x].search(acceptedPat) == -1 || domArr[x].length == 0 || (domArr[x].length < 2 && x >= domArr.length-2 && x > 0)) {
   isValid = false;
  }
  }
  if (domArr[domArr.length-1].length !=2 && domArr[domArr.length-1].search(knownDomsPat) == -1) {
  isValid = false;
  }
  if (domArr.length < 2) {
  isValid = false;
  }
 }
 }
 if (!isValid) {
 WAAddError(formElement,errorMsg,focusIt,stopIt);
 }
}
function WAAlertErrors(errorHead,errorFoot,setFocus,submitForm) { 
 if (!document.WAFV_StopAlert) { 
	 document.WAFV_StopAlert = true;
	 if (document.WAFV_InvalidArray) { 
	 document.WAFV_Stop = true;
  var errorMsg = document.WAFV_Error;
	 if (errorHead!="")
		 errorMsg = errorHead + "\n" + errorMsg;
		if (errorFoot!="")
		 errorMsg += "\n" + errorFoot;
		document.MM_returnValue = false;
		if (document.WAFV_Error!="")
		 alert(errorMsg.replace(/&quot;/g,'"'));
		else if (submitForm)
		 submitForm.submit();
	 if (setFocus && document.WAFV_Focus) {
		 document.tempFocus = document.WAFV_Focus;
   setTimeout("document.tempFocus.focus();setTimeout('document.WAFV_Stop = false;document.WAFV_StopAlert = false;',1)",1); 
  }
  else {
   document.WAFV_Stop = false;
   document.WAFV_StopAlert = false;
  }
  for (var x=0; x<document.WAFV_InvalidArray.length; x++) {
	  document.WAFV_InvalidArray[x].WAFV_Stop = false;
	 }
	 }
	 else {
  document.WAFV_Stop = false;
  document.WAFV_StopAlert = false;
	 if (submitForm) {
	  submitForm.submit();
	 }
	 document.MM_returnValue = true;
	 }
  document.WAFV_Focus = false;
	 document.WAFV_Error = false;
	 document.WAFV_InvalidArray = false;
 }
}
//-->
</script>
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

 <h2>Redvers COBOL JSON Interface - Free Trial Download</h2>

 <p>To download a free 30 day trial of the <strong>Redvers COBOL JSON Interface</strong>, please complete the form below.</p><br>

 <p><em>Required fields are marked with <span class="redText">*</span></em></p>
 <form action="/cgi-bin/rctrial.pl" method="post" onsubmit="WAValidateRQ(document.forms[0].realname,'* Please enter your Name',document.forms[0].realname,0,false,'text');WAValidateEP(document.forms[0].epost,document.forms[0].epost.value,'* Please enter a valid Email address',document.forms[0].epost,0,true);WAValidateRQ(document.forms[0].companyname,'* Please enter your Company Name',document.forms[0].companyname,0,false,'text');WAValidateRQ(document.forms[0].companyaddress,'* Please enter your Company Address',document.forms[0].companyaddress,0,false,'text');WAValidateRQ(document.forms[0].zip,'* Please enter your Zip/Post Code',document.forms[0].zip,0,false,'text');WAValidateRQ(document.forms[0].country,'* Please select your Country',document.forms[0].country,0,true,'select');WAValidateRQ(document.forms[0].termcond,'* Please confirm you have accepted our terms and conditions',document.forms[0].termcond,0,true,'checkbox');WAAlertErrors('The COBOL JSON Interface Free Trial form could not be submitted;','and re-submit.',true,false);return document.MM_returnValue">
 <input type="hidden" name="product" id="product" value="COBOL JSON Interface">
 <table class="table470">
  <tr>
  <td class="tableTd130"><label for="surname"><strong>Your Details</strong></label></td>
  <td class="tableTd340"><input class="input34B" name="surname" id="surname" size="34" maxlength="34"></td>
  </tr>
  <tr>
  <td><label for="realname"><span class="redText">*</span>Name:</label></td>
  <td><input name="realname" id="realname" size="40" maxlength="60"></td>
  </tr>
  <tr>
  <td><label for="epost"><span class="redText">*</span>Email:</label> </td>
  <td><input name="epost" id="epost" size="40" type="email" maxlength="100"></td>
  </tr>
  <tr>
  <td></td>
  <td><em>The email address you provide here will be used to send you your activation key. Please ensure emails sent from redversconsulting.com to this address will pass through your email spam filter.<br><br></em></td>
  </tr> 
  <tr>
  <td><label for="companyname"><span class="redText">*</span>Company Name:</label></td>
  <td><input name="companyname" id="companyname" size="40" maxlength="80"></td>
  </tr>
  <tr>
  <td><label for="companyaddress"><span class="redText">*</span>Company<br>&nbsp;&nbsp;Address:</label> </td>
  <td><input name="companyaddress" id="companyaddress" size="40" maxlength="80"></td>
  </tr>
  <tr>
  <td></td>
  <td><input name="line-2" id="line-2" size="40" maxlength="80"></td>
  </tr>
  <tr>
  <td></td>
  <td><input name="line-3" id="line-3" size="40" maxlength="80"></td>
  </tr>
  <tr>
  <td><label for="zip"><span class="redText">*</span>Zip/Post Code:</label></td>
  <td><input name="zip" id="zip" size="40" maxlength="40"></td>
  </tr>
  <tr>
  <td><label for="country"><span class="redText">*</span>Country:</label> </td>
  <td><select name="country" size="1" id="country" >
   <option value=" " selected="selected">- Select one -</option>
   <option value="United States">United States</option>
   <option value="United Kingdom">United Kingdom</option>
   <option value="Afghanistan">Afghanistan</option>
   <option value="Albania">Albania</option>
   <option value="Algeria">Algeria</option>
   <option value="Andorra">Andorra</option>
   <option value="Angola">Angola</option>
   <option value="Antigua and Barbuda">Antigua and Barbuda</option>
   <option value="Argentina">Argentina</option>
   <option value="Armenia">Armenia</option>
   <option value="Australia">Australia</option>
   <option value="Austria">Austria</option>
   <option value="Azerbaijan">Azerbaijan</option>
   <option value="Bahamas">Bahamas</option>
   <option value="Bahrain">Bahrain</option>
   <option value="Bangladesh">Bangladesh</option>
   <option value="Barbados">Barbados</option>
   <option value="Belarus">Belarus</option>
   <option value="Belgium">Belgium</option>
   <option value="Belize">Belize</option>
   <option value="Benin">Benin</option>
   <option value="Bermuda">Bermuda</option>
   <option value="Bhutan">Bhutan</option>
   <option value="Bolivia">Bolivia</option>
   <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
   <option value="Botswana">Botswana</option>
   <option value="Brazil">Brazil</option>
   <option value="Brunei">Brunei</option>
   <option value="Bulgaria">Bulgaria</option>
   <option value="Burkina Faso">Burkina Faso</option>
   <option value="Burundi">Burundi</option>
   <option value="Cambodia">Cambodia</option>
   <option value="Cameroon">Cameroon</option>
   <option value="Canada">Canada</option>
   <option value="Cape Verde">Cape Verde</option>
   <option value="Cayman Islands">Cayman Islands</option>
   <option value="Central African Republic">Central African Republic</option>
   <option value="Chad">Chad</option>
   <option value="Chile">Chile</option>
   <option value="China">China</option>
   <option value="Colombia">Colombia</option>
   <option value="Comoros">Comoros</option>
   <option value="Congo (Brazzaville)">Congo (Brazzaville)</option>
   <option value="Congo (Brazzaville)">Congo (Kinshasa)</option>
   <option value="Cook Islands">Cook Islands</option>
   <option value="Costa Rica">Costa Rica</option>
   <option value="Cote d'Ivoire">Cote d'Ivoire</option>
   <option value="Croatia">Croatia</option>
   <option value="Cuba">Cuba</option>
   <option value="Cyprus">Cyprus</option>
   <option value="Czech Republic">Czech Republic</option>
   <option value="Denmark">Denmark</option>
   <option value="Djibouti">Djibouti</option>
   <option value="Dominica">Dominica</option>
   <option value="Dominican Republic">Dominican Republic</option>
   <option value="Ecuador">Ecuador</option>
   <option value="Egypt">Egypt</option>
   <option value="El Salvador">El Salvador</option>
   <option value="Equatorial Guinea">Equatorial Guinea</option>
   <option value="Eritrea">Eritrea</option>
   <option value="Estonia">Estonia</option>
   <option value="Ethiopia">Ethiopia</option>
   <option value="Fiji">Fiji</option>
   <option value="Finland">Finland</option>
   <option value="France">France</option>
   <option value="French Polynesia">French Polynesia</option>
   <option value="Gabon">Gabon</option>
   <option value="Gambia">Gambia</option>
   <option value="Georgia">Georgia</option>
   <option value="Germany">Germany</option>
   <option value="Ghana">Ghana</option>
   <option value="Gibraltar">Gibraltar</option>
   <option value="Greece">Greece</option>
   <option value="Grenada">Grenada</option>
   <option value="Guatemala">Guatemala</option>
   <option value="Guinea">Guinea</option>
   <option value="Guinea-Bissau">Guinea-Bissau</option>
   <option value="Guyana">Guyana</option>
   <option value="Haiti">Haiti</option>
   <option value="Honduras">Honduras</option>
   <option value="Hong Kong">Hong Kong</option>
   <option value="Hungary">Hungary</option>
   <option value="Iceland">Iceland</option>
   <option value="India">India</option>
   <option value="Indonesia">Indonesia</option>
   <option value="Iran">Iran</option>
   <option value="Iraq">Iraq</option>
   <option value="Ireland">Ireland</option>
   <option value="Israel">Israel</option>
   <option value="Italy">Italy</option>
   <option value="Jamaica">Jamaica</option>
   <option value="Japan">Japan</option>
   <option value="Jordan">Jordan</option>
   <option value="Kazakhstan">Kazakhstan</option>
   <option value="Kenya">Kenya</option>
   <option value="Kiribati">Kiribati</option>
   <option value="Korea, North">Korea, North</option>
   <option value="Korea, South">Korea, South</option>
   <option value="Kuwait">Kuwait</option>
   <option value="Kyrgyzstan">Kyrgyzstan</option>
   <option value="Laos">Laos</option>
   <option value="Latvia">Latvia</option>
   <option value="Lebanon">Lebanon</option>
   <option value="Lesotho">Lesotho</option>
   <option value="Liberia">Liberia</option>
   <option value="Libya">Libya</option>
   <option value="Liechtenstein">Liechtenstein</option>
   <option value="Lithuania">Lithuania</option>
   <option value="Luxembourg">Luxembourg</option>
   <option value="Macau">Macau</option>
   <option value="Macedonia">Macedonia</option>
   <option value="Madagascar">Madagascar</option>
   <option value="Malawi">Malawi</option>
   <option value="Malaysia">Malaysia</option>
   <option value="Maldives">Maldives</option>
   <option value="Mali">Mali</option>
   <option value="Malta">Malta</option>
   <option value="Marianna Islands">Marianna Islands</option>
   <option value="Marshall Islands">Marshall Islands</option>
   <option value="Martinique">Martinique</option>
   <option value="Mauritania">Mauritania</option>
   <option value="Mauritius">Mauritius</option>
   <option value="Mexico">Mexico</option>
   <option value="Micronesia">Micronesia</option>
   <option value="Moldova">Moldova</option>
   <option value="Monaco">Monaco</option>
   <option value="Mongolia">Mongolia</option>
   <option value="Morocco">Morocco</option>
   <option value="Mozambique">Mozambique</option>
   <option value="Myanmar">Myanmar</option>
   <option value="Namibia">Namibia</option>
   <option value="Nauru">Nauru</option>
   <option value="Nepal">Nepal</option>
   <option value="Netherlands">Netherlands</option>
   <option value="Netherlands Antilles">Netherlands Antilles</option>
   <option value="New Caledonia">New Caledonia</option>
   <option value="New Zealand">New Zealand</option>
   <option value="Nicaragua">Nicaragua</option>
   <option value="Niger">Niger</option>
   <option value="Nigeria">Nigeria</option>
   <option value="Niue Island">Niue Island</option>
   <option value="Norway">Norway</option>
   <option value="Oman">Oman</option>
   <option value="Pakistan">Pakistan</option>
   <option value="Palau">Palau</option>
   <option value="Panama">Panama</option>
   <option value="Papua New Guinea">Papua New Guinea</option>
   <option value="Paraguay">Paraguay</option>
   <option value="Peru">Peru</option>
   <option value="Philippines">Philippines</option>
   <option value="Pitcairn Islands">Pitcairn Islands</option>
   <option value="Poland">Poland</option>
   <option value="Portugal">Portugal</option>
   <option value="Puerto Rico">Puerto Rico</option>
   <option value="Qatar">Qatar</option>
   <option value="Romania">Romania</option>
   <option value="Russia">Russia</option>
   <option value="Rwanda">Rwanda</option>
   <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
   <option value="Saint Lucia">Saint Lucia</option>
   <option value="Samoa">Samoa</option>
   <option value="San Marino">San Marino</option>
   <option value="Saudi Arabia">Saudi Arabia</option>
   <option value="Senegal">Senegal</option>
   <option value="Serbia and Montenegro">Serbia and Montenegro</option>
   <option value="Seychelles">Seychelles</option>
   <option value="Sierra Leone">Sierra Leone</option>
   <option value="Singapore">Singapore</option>
   <option value="Slovakia">Slovakia</option>
   <option value="Slovenia">Slovenia</option>
   <option value="Solomon Islands">Solomon Islands</option>
   <option value="Somalia">Somalia</option>
   <option value="South Africa">South Africa</option>
   <option value="Spain">Spain</option>
   <option value="Sri Lanka">Sri Lanka</option>
   <option value="Sudan">Sudan</option>
   <option value="Suriname">Suriname</option>
   <option value="Swaziland">Swaziland</option>
   <option value="Sweden">Sweden</option>
   <option value="Switzerland">Switzerland</option>
   <option value="Syria">Syria</option>
   <option value="Taiwan">Taiwan</option>
   <option value="Tajikistan">Tajikistan</option>
   <option value="Tanzania">Tanzania</option>
   <option value="Thailand">Thailand</option>
   <option value="Togo">Togo</option>
   <option value="Tokelau">Tokelau</option>
   <option value="Tonga">Tonga</option>
   <option value="Trinidad and Tobago">Trinidad and Tobago</option>
   <option value="Tunisia">Tunisia</option>
   <option value="Turkey">Turkey</option>
   <option value="Turkmenistan">Turkmenistan</option>
   <option value="Tuvalu">Tuvalu</option>
   <option value="Uganda">Uganda</option>
   <option value="Ukraine">Ukraine</option>
   <option value="United Arab Emirates">United Arab Emirates</option>
   <option value="United Kingdom">United Kingdom</option>
   <option value="United States">United States</option>
   <option value="Uruguay">Uruguay</option>
   <option value="Uzbekistan">Uzbekistan</option>
   <option value="Vanuatu">Vanuatu</option>
   <option value="Vatican City">Vatican City</option>
   <option value="Venezuela">Venezuela</option>
   <option value="Vietnam">Vietnam</option>
   <option value="Wallis and Futuna Islands">Wallis and Futuna Islands</option>
   <option value="Yemen">Yemen</option>
   <option value="Zambia">Zambia</option>
   <option value="Zimbabwe">Zimbabwe</option>
   <option value="Other">Other</option>
  </select></td>
  </tr>
  <tr>
  <td><label for="system">Operating System:</label> </td>
  <td><input name="system" id="system" size="40" maxlength="180"></td>
  </tr>
  <tr>
  <td colspan="2"><p><br>At your site, how do your COBOL programs usually determine the length of a COBOL field:</p></td>
  </tr>
  <tr>
  <td colspan="2"><p>&nbsp;&nbsp;<input name="lengthmeth" id="lengthmeth01" value="LO" type="radio" checked="checked">
   <label for="lengthmeth01">- <code>LENGTH OF dataname</code> </label>&nbsp;&nbsp;&nbsp;&nbsp;
   <input name="lengthmeth" id="lengthmeth02" value="FL" type="radio">
   <label for="lengthmeth02">- <code>FUNCTION LENGTH (dataname)</code></label></p></td>
  </tr>
  <tr>
  <td colspan="2"><p><br>Please read our <a href="download.php?f=download_terms_cond.pdf" title="Terms and Conditions of Download">Terms and Conditions</a> and indicate your acceptance by checking the box below:</p></td>
  </tr>
  <tr>
  <td colspan="2"><p>&nbsp;&nbsp;<input name="termcond" id="termcond" type="checkbox">
   <label for="termcond">- <span class="redText">*</span>I accept the download <a href="download.php?f=download_terms_cond.pdf" title="Terms and Conditions of Download">terms and conditions</a>.</label></p></td>
  </tr>
 </table>
 <p class="centreText"><br>
  <input src="images/button_download.png" alt="Download" type="image">
 </p>
 </form>

 <p class="smallText">We will not disclose information about you or your company to organizations outside Redvers Consulting without your consent unless we are required to do so by law. To find out more, please refer to our <a href="privacy.php">Privacy Policy</a>.</p>

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