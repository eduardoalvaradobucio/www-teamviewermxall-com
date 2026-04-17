<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Redvers Consulting Contact Form</title>
<meta name="keywords" content="Redvers Consulting, contact">
<meta name="description" content="Redvers Consulting Customer Contact Form and Office Address Details">

<link href="css/cobol.css" rel="stylesheet">
<style>
<!--
#navList #navContact a {background-position: bottom}
#picSpace {background-image: url(images/cobol-contact.jpg)}
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

<div id="content">

 <h2>Contact Redvers Consulting</h2>

 <p><strong>Thank you for your interest in Redvers Consulting.</strong></p>

 <p>To send us an email, please complete the form below. Alternatively, you may contact our <a href="#devoffice" title="Development Office">Development</a> or our <a href="#accountsoffice" title="Accounts Office">Accounts</a> offices directly using the information at the foot of this page.</p>

 <p><em>Required fields are marked with <span class="redText">*</span></em></p>
 <form action="/cgi-bin/rccont.pl" method="post" onsubmit="WAValidateRQ(document.forms[0].realname,'* Please enter your name',document.forms[0].realname,0,false,'text');WAValidateEP(document.forms[0].epost,document.forms[0].epost.value,'* Please enter a valid Email address',document.forms[0].epost,0,true);WAValidateRQ(document.forms[0].companyname,'* Please enter your company name',document.forms[0].companyname,0,false,'text');WAAlertErrors('The form to contact Redvers Consulting could not be submitted;','and re-submit.',true,false);return document.MM_returnValue">

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
  <td><input name="epost" id="epost" size="40" maxlength="100" type="email"></td>
  </tr>
  <tr>
  <td></td>
  <td><em>The email address you provide here will be used to reply to your question. Please ensure emails sent from redversconsulting.com to this address will pass through your email spam filter.<br><br></em></td>
  </tr> 
  <tr>
  <td><label for="companyname"><span class="redText">*</span>Company Name:</label></td>
  <td><input name="companyname" id="companyname" size="40" maxlength="80"></td>
  </tr>
  <tr>
  <td><label for="companyaddress">Address:</label> </td>
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
  <td><label for="zip">Zip/Post Code:</label> </td>
  <td><input name="zip" id="zip" size="40" maxlength="40"></td>
  </tr>
  <tr>
  <td><label for="country">Country:</label> </td>
  <td><select name="country" id="country" size="1">
   <option selected="selected"> - Select one - </option>
   <option>United States</option>
   <option>United Kingdom</option>
   <option>Afghanistan</option>
   <option>Albania</option>
   <option>Algeria</option>
   <option>Andorra</option>
   <option>Angola</option>
   <option>Antigua and Barbuda</option>
   <option>Argentina</option>
   <option>Armenia</option>
   <option>Australia</option>
   <option>Austria</option>
   <option>Azerbaijan</option>
   <option>Bahamas</option>
   <option>Bahrain</option>
   <option>Bangladesh</option>
   <option>Barbados</option>
   <option>Belarus</option>
   <option>Belgium</option>
   <option>Belize</option>
   <option>Benin</option>
   <option>Bermuda</option>
   <option>Bhutan</option>
   <option>Bolivia</option>
   <option>Bosnia and Herzegovina</option>
   <option>Botswana</option>
   <option>Brazil</option>
   <option>Brunei</option>
   <option>Bulgaria</option>
   <option>Burkina Faso</option>
   <option>Burundi</option>
   <option>Cambodia</option>
   <option>Cameroon</option>
   <option>Canada</option>
   <option>Cape Verde</option>
   <option>Cayman Islands</option>
   <option>Central African Republic</option>
   <option>Chad</option>
   <option>Chile</option>
   <option>China</option>
   <option>Colombia</option>
   <option>Comoros</option>
   <option>Congo (Brazzaville)</option>
   <option>Congo (Kinshasa)</option>
   <option>Cook Islands</option>
   <option>Costa Rica</option>
   <option>Cote d'Ivoire</option>
   <option>Croatia</option>
   <option>Cuba</option>
   <option>Cyprus</option>
   <option>Czech Republic</option>
   <option>Denmark</option>
   <option>Djibouti</option>
   <option>Dominica</option>
   <option>Dominican Republic</option>
   <option>Ecuador</option>
   <option>Egypt</option>
   <option>El Salvador</option>
   <option>Equatorial Guinea</option>
   <option>Eritrea</option>
   <option>Estonia</option>
   <option>Ethiopia</option>
   <option>Fiji</option>
   <option>Finland</option>
   <option>France</option>
   <option>French Polynesia</option>
   <option>Gabon</option>
   <option>Gambia</option>
   <option>Georgia</option>
   <option>Germany</option>
   <option>Ghana</option>
   <option>Gibraltar</option>
   <option>Greece</option>
   <option>Grenada</option>
   <option>Guatemala</option>
   <option>Guinea</option>
   <option>Guinea-Bissau</option>
   <option>Guyana</option>
   <option>Haiti</option>
   <option>Honduras</option>
   <option>Hong Kong</option>
   <option>Hungary</option>
   <option>Iceland</option>
   <option>India</option>
   <option>Indonesia</option>
   <option>Iran</option>
   <option>Iraq</option>
   <option>Ireland</option>
   <option>Israel</option>
   <option>Italy</option>
   <option>Jamaica</option>
   <option>Japan</option>
   <option>Jordan</option>
   <option>Kazakhstan</option>
   <option>Kenya</option>
   <option>Kiribati</option>
   <option>Korea, North</option>
   <option>Korea, South</option>
   <option>Kuwait</option>
   <option>Kyrgyzstan</option>
   <option>Laos</option>
   <option>Latvia</option>
   <option>Lebanon</option>
   <option>Lesotho</option>
   <option>Liberia</option>
   <option>Libya</option>
   <option>Liechtenstein</option>
   <option>Lithuania</option>
   <option>Luxembourg</option>
   <option>Macau</option>
   <option>Macedonia</option>
   <option>Madagascar</option>
   <option>Malawi</option>
   <option>Malaysia</option>
   <option>Maldives</option>
   <option>Mali</option>
   <option>Malta</option>
   <option>Marianna Islands</option>
   <option>Marshall Islands</option>
   <option>Martinique</option>
   <option>Mauritania</option>
   <option>Mauritius</option>
   <option>Mexico</option>
   <option>Micronesia</option>
   <option>Moldova</option>
   <option>Monaco</option>
   <option>Mongolia</option>
   <option>Morocco</option>
   <option>Mozambique</option>
   <option>Myanmar</option>
   <option>Namibia</option>
   <option>Nauru</option>
   <option>Nepal</option>
   <option>Netherlands</option>
   <option>Netherlands Antilles</option>
   <option>New Caledonia</option>
   <option>New Zealand</option>
   <option>Nicaragua</option>
   <option>Niger</option>
   <option>Nigeria</option>
   <option>Niue Island</option>
   <option>Norway</option>
   <option>Oman</option>
   <option>Pakistan</option>
   <option>Palau</option>
   <option>Panama</option>
   <option>Papua New Guinea</option>
   <option>Paraguay</option>
   <option>Peru</option>
   <option>Philippines</option>
   <option>Pitcairn Islands</option>
   <option>Poland</option>
   <option>Portugal</option>
   <option>Puerto Rico</option>
   <option>Qatar</option>
   <option>Romania</option>
   <option>Russia</option>
   <option>Rwanda</option>
   <option>Saint Kitts and Nevis</option>
   <option>Saint Lucia</option>
   <option>Samoa</option>
   <option>San Marino</option>
   <option>Saudi Arabia</option>
   <option>Senegal</option>
   <option>Serbia and Montenegro</option>
   <option>Seychelles</option>
   <option>Sierra Leone</option>
   <option>Singapore</option>
   <option>Slovakia</option>
   <option>Slovenia</option>
   <option>Solomon Islands</option>
   <option>Somalia</option>
   <option>South Africa</option>
   <option>Spain</option>
   <option>Sri Lanka</option>
   <option>Sudan</option>
   <option>Suriname</option>
   <option>Swaziland</option>
   <option>Sweden</option>
   <option>Switzerland</option>
   <option>Syria</option>
   <option>Taiwan</option>
   <option>Tajikistan</option>
   <option>Tanzania</option>
   <option>Thailand</option>
   <option>Togo</option>
   <option>Tokelau</option>
   <option>Tonga</option>
   <option>Trinidad and Tobago</option>
   <option>Tunisia</option>
   <option>Turkey</option>
   <option>Turkmenistan</option>
   <option>Tuvalu</option>
   <option>Uganda</option>
   <option>Ukraine</option>
   <option>United Arab Emirates</option>
   <option>United Kingdom</option>
   <option>United States</option>
   <option>Uruguay</option>
   <option>Uzbekistan</option>
   <option>Vanuatu</option>
   <option>Vatican City</option>
   <option>Venezuela</option>
   <option>Vietnam</option>
   <option>Wallis and Futuna Islands</option>
   <option>Yemen</option>
   <option>Zambia</option>
   <option>Zimbabwe</option>
   <option>Other</option>
  </select></td>
  </tr>
  <tr>
  <td colspan="2"><strong>Query</strong></td>
  </tr>
  <tr>
  <td><label for="system">Operating System:</label></td>
  <td><input name="system" id="system" size="40" maxlength="180"></td>
  </tr>
  <tr>
  <td><label for="topic">Product or service<br>your inquiry<br>relates to:</label><br>&nbsp;</td>
  <td><select name="topic" id="topic" size="1">
   <option selected="selected"> - Select one - </option>
   <option> Encryption Module </option>
   <option> Hashing Algorithm </option>
   <option> COBOL XML Interface </option>
   <option> COBOL JSON Interface </option>
   <option> COBOL Signature </option>
   <option> Cloaking Device </option>
   <option> Optimisation Service </option>
   <option> Tools </option>
   <option> Other </option>
  </select></td>
  </tr>
  <tr>
  <td class="tableTdTop"><label for="message">Your Message:</label> </td>
  <td><textarea cols="40" rows="12" name="message" id="message" maxlength="5000"></textarea></td>
  </tr>
  <tr>
  <td></td>
  <td class="rightText"><span class="smallText">(max 5,000 characters)</span></td>
  </tr>
 </table>
 <p class="centreText"><br>
  <input src="images/button_send.png" alt="Send" type="image">
 </p>
 </form>

 <p class="smallText">We will not disclose information about you or your company to organizations outside Redvers Consulting without your consent unless we are required to do so by law. To find out more, please refer to our <a href="privacy.php" title="About Redvers Consulting - Privacy Statement">Privacy Policy</a>.</p><br>

 <h3><a id="devoffice"></a>Development Office:</h3>

 <p>Redvers Consulting Ltd<br>
   16/18 Woodford Rd,<br>
   London &nbsp;E7 0HA,<br>
   UK<br>  
   Tel: +44 (0)203 138 5788</p>

 <h3><a id="accountsoffice"></a>Accounts Office:</h3>

 <p>Redvers Consulting Ltd<br>
   1st Floor,<br>
   48 Dangan Road,<br>
   London &nbsp;E11 2RF,<br>
   UK<br>  
   Tel: +44 (0)870 922 0633</p><br>
 
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