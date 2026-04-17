  

<html>
<head>
 <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-3J0T5LVH71"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-3J0T5LVH71');
    </script>
	
	<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4379043538209974"
     crossorigin="anonymous"></script>
	
    <meta charset="utf-8" />
    <!-- basic -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1" /><meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <!-- site metas -->

    <meta name="keywords" content="pozzware, web, software, art, games" /><meta name="description" content="PozzWare.com - Software, art and games" /><meta name="author" content="Stefano Pozzati" />

	<!-- bootstrap css -->
    <link rel="stylesheet" href="/Content/bootstrap.min.css" />
    <!-- style css -->
    <link rel="stylesheet" href="/Content/Site.css" />
	
    <!-- fevicon -->
    <link rel="icon" href="/images/fevicon.png" type="image/gif" /><title>
	JSON Library
</title></head>  
<body>  
	<div class="header-top-base">
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class=" col-sm-12 col logo_section">
                        <div class="full">
                            <div class="center-desk">
                                <div class="logo">
                                    <a href="/"><img src="/images/logo.png" alt="Pozzware.com" /></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
	</div>
	
<div class="container-fluid">
	<div class="row">
		<div class="col-md-3">
			<div class="hairware-menu">
				<ul>
					<li><a href="/pozzware/Corsi/Programmazione/VB.NET/JSON Library.aspx">Json Library (English)</a></li>
					<li><a href="/pozzware/Corsi/Programmazione/VB.NET/Libreria JSON.aspx">Libreria Json (Italiano)</a></li>
					<li><a href="/pozzware/Corsi/Programmazione/VB.NET/PW.JSON Dowload.aspx">Download JSON Library</a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-9">
			
<h1>PW.JSON Library Implementation in VB.NET</h1>
<h4>Implementazione della libreria PW.JSON in VB.NET (<a href="http://www.pozzware.com/pozzware/Corsi/Programmazione/VB.NET/Libreria%20JSON.aspx">versione italiana</a>)</h4>
<p>In this post I'm trying to explain how I've developed the PW.JSON library for .NET. This Library can convert Objects to JSON strings and viceversa with the&nbsp;standard defined&nbsp;on <a href="http://www.json.org">www.json.org</a>.</p>
<p>I've searched on links in&nbsp;<a href="http://www.json.org">www.json.org</a>&nbsp;site&nbsp;but I've not found some axample in&nbsp;<strong>VB.NET</strong>.&nbsp;There is&nbsp;a&nbsp;VB 6 version, a&nbsp; C#&nbsp;very complete and complex&nbsp;version but nothing else, so searching on the web I've found this sample at <a href="http://mikeoncode.blogspot.com/2007/05/json-re-visited-from.html">http://mikeoncode.blogspot.com/2007/05/json-re-visited-from.html</a>.</p>
<p>Then I've modified the code of Mike Griffiths for managing double quoted strings instead of single quoted (the JSON standard is double quoted) and I've managed null properties aof the objects (properties set to Nothing).</p>
<p>The new code is this:</p>
<div class="code"><code><font color="#0000ff" size="2">Imports</font> <font color="#000000" size="2">System.Text</font> <br />
<br />
<font color="#0000ff" size="2">Friend</font> <font color="#0000ff" size="2">Class</font> <font color="#000000" size="2">NetJSON</font> <br />
<br />
<font color="#0000ff" size="2">#Region</font> <font color="#a31515" size="2">&quot; Private Declarations&quot;</font> <br />
<font color="#0000ff" size="2">Dim</font><font size="2"> myName </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2"> = </font><font color="#a31515" size="2">&quot;&quot;<br />
</font><font color="#0000ff" size="2">Dim</font><font size="2"> myContent </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">New</font><font size="2"> Hashtable<br />
</font><font color="#0000ff" size="2">Const</font><font size="2"> dblQuote </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Char</font><font size="2"> = Chr(34)<br />
</font><font color="#0000ff" size="2">#End</font><font color="#000000" size="2"> </font><font color="#0000ff" size="2">Region<br />
<br />
#Region</font><font color="#000000" size="2"> </font><font color="#a31515" size="2">&quot; Enumerations&quot;<br />
</font><font color="#0000ff" size="2">Private</font><font size="2"> </font><font color="#0000ff" size="2">Enum</font><font size="2"> dataType<br />
&nbsp;&nbsp;&nbsp; dt_Nothing<br />
&nbsp;&nbsp;&nbsp; dt_Boolean<br />
&nbsp;&nbsp;&nbsp; dt_Decimal<br />
&nbsp;&nbsp;&nbsp; dt_Double<br />
&nbsp;&nbsp;&nbsp; dt_Integer<br />
&nbsp;&nbsp;&nbsp; dt_string<br />
&nbsp;&nbsp;&nbsp; dt_Array<br />
&nbsp;&nbsp;&nbsp; dt_NetJSON<br />
</font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">Enum<br />
#End</font><font color="#000000" size="2"> </font><font color="#0000ff" size="2">Region<br />
<br />
#Region</font><font color="#000000" size="2"> </font><font color="#a31515" size="2">&quot; Public Constructors, Methods and Properties&quot;<br />
</font><font color="#0000ff" size="2">Public</font><font size="2"> </font><font color="#0000ff" size="2">Sub</font><font size="2"> </font><font color="#0000ff" size="2">New</font><font size="2">()<br />
<br />
</font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">Sub<br />
</font><br />
<font color="#0000ff" size="2">Public</font><font size="2"> </font><font color="#0000ff" size="2">Sub</font><font size="2"> </font><font color="#0000ff" size="2">New</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> nameString </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp; myName = nameString<br />
</font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">Sub<br />
</font><br />
<font color="#0000ff" size="2">Public</font><font size="2"> </font><font color="#0000ff" size="2">Sub</font><font size="2"> AddNameValue(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> nameString </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2">, </font><font color="#0000ff" size="2">ByVal</font><font size="2"> Value </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Object</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp; StoreValue(nameString, Value)<br />
</font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">Sub<br />
</font><br />
<font color="#0000ff" size="2">Public</font><font size="2"> </font><font color="#0000ff" size="2">Overrides</font><font size="2"> </font><font color="#0000ff" size="2">Function</font><font size="2"> toString() </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String<br />
&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> Resp </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">New</font><font size="2"> StringBuilder<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Dim</font><font size="2"> Firstcall </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Boolean</font><font size="2"> = </font><font color="#0000ff" size="2">True<br />
&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> TailBrace </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2"> = </font><font color="#a31515" size="2">&quot;}&quot;<br />
</font><br />
<font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; If</font><font size="2"> myName.Length &gt; 0 </font><font color="#0000ff" size="2">Then<br />
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resp.Append(</font><font color="#a31515" size="2">&quot;{&quot;</font><font size="2"> &amp; dblQuote &amp; myName &amp; dblQuote &amp; </font><font color="#a31515" size="2">&quot;: {&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TailBrace &amp;= </font><font color="#a31515" size="2">&quot;}&quot;<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Else<br />
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resp.Append(</font><font color="#a31515" size="2">&quot;{&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">If<br />
</font><br />
<font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> myEnumerator </font><font color="#0000ff" size="2">As</font><font size="2"> IDictionaryEnumerator = myContent.GetEnumerator()<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">While</font><font size="2"> myEnumerator.MoveNext<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resp.Append(IIf(Firstcall, </font><font color="#a31515" size="2">&quot;&quot;</font><font size="2">, </font><font color="#a31515" size="2">&quot;, &quot;</font><font size="2">) &amp; dblQuote &amp; myEnumerator.Key &amp; dblQuote &amp; </font><font color="#a31515" size="2">&quot;: &quot;</font><font size="2"> &amp; MakeString(myEnumerator.Value))<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Firstcall = </font><font color="#0000ff" size="2">False<br />
&nbsp;&nbsp;&nbsp; End</font><font size="2"> </font><font color="#0000ff" size="2">While<br />
</font><font size="2"><br />
&nbsp;&nbsp;&nbsp; Resp.Append(TailBrace)<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Return</font><font size="2"> Resp.ToString()<br />
</font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">Function<br />
<br />
#End</font><font color="#000000" size="2"> </font><font color="#0000ff" size="2">Region<br />
<br />
#Region</font><font color="#000000" size="2"> </font><font color="#a31515" size="2">&quot; Private Functions and Subroutines&quot;<br />
</font><font color="#0000ff" size="2">Private</font><font size="2"> </font><font color="#0000ff" size="2">Function</font><font size="2"> MakeString(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> ThisData </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Object</font><font size="2">) </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String<br />
&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> ThisType </font><font color="#0000ff" size="2">As</font><font size="2"> dataType = GetDataType(ThisData)<br />
<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">If</font><font size="2"> ThisType = dataType.dt_Array </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> TestArray(ThisData.length) </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Object<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> aLoop </font><font color="#0000ff" size="2">As</font><font size="2"> Int16<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Dim</font><font size="2"> ArrayStruct </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">New</font><font size="2"> StringBuilder(</font><font color="#a31515" size="2">&quot;[&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Dim</font><font size="2"> FirstCall </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Boolean</font><font size="2"> = </font><font color="#0000ff" size="2">True<br />
</font><font size="2"><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ThisType = GetDataType(ThisData(0))<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">For</font><font size="2"> aLoop = 0 </font><font color="#0000ff" size="2">To</font><font size="2"> ThisData.Length - 1<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ArrayStruct.Append(IIf(FirstCall, </font><font color="#a31515" size="2">&quot;&quot;</font><font size="2">, </font><font color="#a31515" size="2">&quot;, &quot;</font><font size="2">) &amp; MakeElementString(ThisData(aLoop), ThisType))<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FirstCall = </font><font color="#0000ff" size="2">False<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Next<br />
</font><font size="2"><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ArrayStruct.Append(</font><font color="#a31515" size="2">&quot;]&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Return</font><font size="2"> ArrayStruct.ToString()<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Else<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> MakeElementString(ThisData, ThisType)<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">If<br />
End</font><font size="2"> </font><font color="#0000ff" size="2">Function<br />
</font><br />
<font color="#0000ff" size="2">Private</font><font size="2"> </font><font color="#0000ff" size="2">Function</font><font size="2"> MakeElementString(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> ThisData </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Object</font><font size="2">, </font><font color="#0000ff" size="2">ByVal</font><font size="2"> ThisDataType </font><font color="#0000ff" size="2">As</font><font size="2"> dataType)<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Select</font><font size="2"> </font><font color="#0000ff" size="2">Case</font><font size="2"> ThisDataType<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_Boolean<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Return</font><font size="2"> IIf(</font><font color="#0000ff" size="2">CBool</font><font size="2">(ThisData), </font><font color="#a31515" size="2">&quot;true&quot;</font><font size="2">, </font><font color="#a31515" size="2">&quot;false&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_Decimal<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Return</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2">.Format(</font><font color="#a31515" size="2">&quot;{0}&quot;</font><font size="2">, ThisData).Replace(</font><font color="#a31515" size="2">&quot;,&quot;c</font><font size="2">, </font><font color="#a31515" size="2">&quot;.&quot;c</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_string<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Return</font><font size="2"> Chr(34) &amp; </font><font color="#0000ff" size="2">CType</font><font size="2">(ThisData, </font><font color="#0000ff" size="2">String</font><font size="2">).Replace(</font><font color="#a31515" size="2">&quot;\&quot;</font><font size="2">, </font><font color="#a31515" size="2">&quot;\\&quot;</font><font size="2">).Replace(</font><font color="#a31515" size="2">&quot;/&quot;</font><font size="2">, </font><font color="#a31515" size="2">&quot;\/&quot;</font><font size="2">).Replace(vbCrLf, </font><font color="#a31515" size="2">&quot;\n&quot;</font><font size="2">).Replace(vbTab, </font><font color="#a31515" size="2">&quot;\t&quot;</font><font size="2">).Replace(Chr(34), </font><font color="#a31515" size="2">&quot;\&quot;</font><font size="2"> &amp; Chr(34)) &amp; Chr(34)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_Nothing<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Return</font><font size="2"> </font><font color="#a31515" size="2">&quot;null&quot;<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Case</font><font size="2"> dataType.dt_NetJSON<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Return</font><font size="2"> ThisData.ToString()<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> </font><font color="#0000ff" size="2">Else<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> </font><font color="#a31515" size="2">&quot;&quot;<br />
</font>&nbsp;&nbsp;&nbsp; <font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">Select<br />
End</font><font size="2"> </font><font color="#0000ff" size="2">Function<br />
</font><br />
<font color="#0000ff" size="2">Private</font><font size="2"> </font><font color="#0000ff" size="2">Function</font><font size="2"> GetDataType(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> Value </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Object</font><font size="2">) </font><font color="#0000ff" size="2">As</font><font size="2"> dataType<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">If</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> Array </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_Array<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">ElseIf</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> </font><font color="#0000ff" size="2">Single</font><font size="2"> </font><font color="#0000ff" size="2">Or</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> </font><font color="#0000ff" size="2">Double</font><font size="2"> </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_Double<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">ElseIf</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> </font><font color="#0000ff" size="2">Decimal</font><font size="2"> </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_Decimal<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">ElseIf</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> </font><font color="#0000ff" size="2">Boolean</font><font size="2"> </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_Boolean<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">ElseIf</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2"> </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_string<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">ElseIf</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> </font><font color="#0000ff" size="2">Integer</font><font size="2"> </font><font color="#0000ff" size="2">Or</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> Int16 </font><font color="#0000ff" size="2">Or</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> Int32 </font><font color="#0000ff" size="2">Or</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> Int64 </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_Integer<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">ElseIf</font><font size="2"> </font><font color="#0000ff" size="2">TypeOf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> NetJSON </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_NetJSON<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">ElseIf</font><font size="2"> Value </font><font color="#0000ff" size="2">Is</font><font size="2"> </font><font color="#0000ff" size="2">Nothing</font><font size="2"> </font><font color="#0000ff" size="2">Then<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> dataType.dt_Nothing<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">If<br />
End</font><font size="2"> </font><font color="#0000ff" size="2">Function<br />
</font><br />
<br />
<font color="#0000ff" size="2">Private</font><font size="2"> </font><font color="#0000ff" size="2">Sub</font><font size="2"> StoreValue(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> nameString </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2">, </font><font color="#0000ff" size="2">ByVal</font><font size="2"> Value </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Object</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Select</font><font size="2"> </font><font color="#0000ff" size="2">Case</font><font size="2"> GetDataType(Value)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_Array<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Dim</font><font size="2"> copyArray(Value.length - 1) </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Object<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For</font><font size="2"> aLoop </font><font color="#0000ff" size="2">As</font><font size="2"> Int16 = 0 </font><font color="#0000ff" size="2">To</font><font size="2"> Value.length - 1<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; copyArray(aLoop) = Value(aLoop)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Next<br />
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myContent.Add(nameString, copyArray)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_Boolean<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Dim</font><font size="2"> wrkBoolean </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Boolean</font><font size="2"> = </font><font color="#0000ff" size="2">CBool</font><font size="2">(Value)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myContent.Add(nameString, wrkBoolean)<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Case</font><font size="2"> dataType.dt_Double, dataType.dt_Integer, dataType.dt_Decimal<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Dim</font><font size="2"> wrkDecimal </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">Decimal</font><font size="2"> = </font><font color="#0000ff" size="2">CDec</font><font size="2">(Value)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myContent.Add(nameString, wrkDecimal)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_string<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">Dim</font><font size="2"> wrkString </font><font color="#0000ff" size="2">As</font><font size="2"> </font><font color="#0000ff" size="2">String</font><font size="2"> = </font><font color="#0000ff" size="2">CStr</font><font size="2">(Value)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myContent.Add(nameString, wrkString)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_NetJSON<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myContent.Add(nameString, Value)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><font color="#0000ff" size="2">Case</font><font size="2"> dataType.dt_Nothing<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myContent.Add(nameString, </font><font color="#0000ff" size="2">Nothing</font><font size="2">)<br />
<br />
&nbsp;&nbsp;&nbsp; </font><font color="#0000ff" size="2">End</font><font size="2"> </font><font color="#0000ff" size="2">Select<br />
End</font><font size="2"> </font><font color="#0000ff" size="2">Sub<br />
<br />
#End</font><font color="#000000" size="2"> </font><font color="#0000ff" size="2">Region<br />
<br />
End</font><font color="#000000" size="2"> </font><font color="#0000ff" size="2">Class</font><br />
</code></div>
<p>The NetJSON class help us on creating JSON strings but we must think in terms of name/value properties. I'll convert any type of object in JSON strings, so I've developed The JSONHelper class below:</p>
<div class="code"><code><font color="#0000ff" size="2">Imports</font><font size="2"> System.Reflection<br />
<br />
</font><font color="#0000ff" size="2">Public Class</font><font size="2"><font color="#000000"> JSONHelper</font><br />
<br />
</font><font color="#0000ff" size="2">#Region </font><font color="#a31515" size="2">&quot;Gestione Object via Reflection&quot;<br />
<br />
</font><font color="#0000ff" size="2">Public Shared Function</font><font size="2"> <strong>ObjectToString</strong>(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> Obj </font><font color="#0000ff" size="2">As Object</font><font size="2">) </font><font color="#0000ff" size="2">As String<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; If</font><font size="2"> Obj </font><font color="#0000ff" size="2">Is Nothing Then Return </font><font color="#a31515" size="2">&quot;&quot;<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> _t </font><font color="#0000ff" size="2">As</font><font size="2"> Type = Obj.GetType()<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Return</font><font size="2"> ConvertSubObjectToNetJSON(</font><font color="#a31515" size="2">&quot;&quot;</font><font size="2">, Obj).toString<br />
</font><font color="#0000ff" size="2">End Function<br />
<br />
</font><font color="#0000ff" size="2">Private Shared Function</font><font size="2"> ConvertSubObjectToNetJSON(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> Name </font><font color="#0000ff" size="2">As String</font><font size="2">, </font><font color="#0000ff" size="2">ByRef</font><font size="2"> Obj </font><font color="#0000ff" size="2">As Object</font><font size="2">) </font><font color="#0000ff" size="2">As</font><font size="2"> NetJSON<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; If</font><font size="2"> Obj </font><font color="#0000ff" size="2">Is Nothing Then Return Nothing<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> _t </font><font color="#0000ff" size="2">As</font><font size="2"> Type = Obj.GetType()<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> result </font><font color="#0000ff" size="2">As New</font><font size="2"> NetJSON(Name)<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; For Each</font><font size="2"> _p </font><font color="#0000ff" size="2">As</font><font size="2"> PropertyInfo </font><font color="#0000ff" size="2">In</font><font size="2"> _t.GetProperties()<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If</font><font size="2"> _p.PropertyType.IsPrimitive </font><font color="#0000ff" size="2">Then<br />
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; result.AddNameValue(_p.Name, _p.GetValue(Obj, </font><font color="#0000ff" size="2">Nothing</font><font size="2">))<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ElseIf</font><font size="2"> _p.PropertyType.IsArray </font><font color="#0000ff" size="2">Then<br />
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; result.AddNameValue(_p.Name, _p.GetValue(Obj, </font><font color="#0000ff" size="2">Nothing</font><font size="2">))<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ElseIf</font><font size="2"> _p.PropertyType.IsClass </font><font color="#0000ff" size="2">AndAlso</font><font size="2"> _p.PropertyType.Name &lt;&gt; </font><font color="#0000ff" size="2">GetType</font><font size="2">(</font><font color="#0000ff" size="2">String</font><font size="2">).Name </font><font color="#0000ff" size="2">Then<br />
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result.AddNameValue(_p.Name, ConvertSubObjectToNetJSON(</font><font color="#a31515" size="2">&quot;&quot;</font><font size="2">, _p.GetValue(Obj, </font><font color="#0000ff" size="2">Nothing</font><font size="2">)))<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ElseIf</font><font size="2"> _p.PropertyType.Name = </font><font color="#0000ff" size="2">GetType</font><font size="2">(</font><font color="#0000ff" size="2">String</font><font size="2">).Name </font><font color="#0000ff" size="2">Then<br />
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; result.AddNameValue(_p.Name, _p.GetValue(Obj, </font><font color="#0000ff" size="2">Nothing</font><font size="2">))<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Else<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ThrowNew</font><font size="2"> NotImplementedException(</font><font color="#a31515" size="2">&quot;Property Type '&quot;</font><font size="2"> &amp; _p.PropertyType.Name &amp; </font><font color="#a31515" size="2">&quot;' not yet implemented&quot;</font><font size="2">)<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End If<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Next<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Return</font><font size="2"> result<br />
</font><font color="#0000ff" size="2">End Function<br />
<br />
</font><font color="#0000ff" size="2">Public Shared Function</font><font size="2"> StringToObject(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> JSONString </font><font color="#0000ff" size="2">As String</font><font size="2">, </font><font color="#0000ff" size="2">ByVal</font><font size="2"> ClassType </font><font color="#0000ff" size="2">As</font><font size="2"> Type) </font><font color="#0000ff" size="2">As Object<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> ojson </font><font color="#0000ff" size="2">As New</font><font size="2"> JSON.JSONObject<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Return</font><font size="2"> ojson.parse(JSONString, ClassType)<br />
</font><font color="#0000ff" size="2">End Function<br />
<br />
#End Region<br />
<br />
End Class</font><br />
&nbsp;</code></div>
<p>Using the <var><a href="http://msdn.microsoft.com/it-it/library/system.reflection.propertyinfo.aspx">PropertyInfo</a></var>&nbsp;calss&nbsp;of <var><a href="http://msdn.microsoft.com/it-it/library/system.reflection.aspx">System.Reflection</a></var>&nbsp;namespace I convert each object peoprerty in a Name/Value property of NetJSON class.</p>
<p>Note that if a property is of&nbsp;<var><a href="http://msdn.microsoft.com/en-us/library/82ab7w69(VS.80).aspx">Date</a></var> type,&nbsp;the code will&nbsp;raise a&nbsp;<var><a href="http://msdn.microsoft.com/en-us/library/system.notimplementedexception.aspx">NotImplementedException</a></var>. This is correct&nbsp;because the JSON standard don't define date data&nbsp;type.</p>
<p>This is&nbsp;how to&nbsp;use&nbsp;<var>ObjectToString</var> method:</p>
<div class="code"><code><font color="#0000ff" size="2">Imports</font><font size="2"><font color="#000000"> PW.JSON</font><br />
<br />
</font><font color="#0000ff" size="2">Module</font><font size="2"><font color="#000000"> Module1</font><br />
<br />
</font><font color="#0000ff" size="2">&nbsp; Class</font><font size="2"> Prova<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Private</font><font size="2"> _id </font><font color="#0000ff" size="2">As Integer<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Private</font><font size="2"> _name </font><font color="#0000ff" size="2">As String<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Private</font><font size="2"> _valido </font><font color="#0000ff" size="2">As Boolean<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Private</font><font size="2"> _subObject </font><font color="#0000ff" size="2">As</font><font size="2"> Prova<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Private</font><font size="2"> _numero </font><font color="#0000ff" size="2">As Integer<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Private</font><font size="2"> _numeroDec </font><font color="#0000ff" size="2">As Double<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Private</font><font size="2"> _array() </font><font color="#0000ff" size="2">As String<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Property</font><font size="2"> ID() </font><font color="#0000ff" size="2">As Integer<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> _id<br />
</font><font color="#0000ff" size="2">&nbsp; &nbsp;&nbsp;&nbsp; End Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Set</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> value </font><font color="#0000ff" size="2">As Integer</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;_id = value<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Set<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; End Property<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Property</font><font size="2"> Name() </font><font color="#0000ff" size="2">As String<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Return</font><font size="2"> _name<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Set</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> value </font><font color="#0000ff" size="2">As String</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _name = value<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Set<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;End Property<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Property</font><font size="2"> Valido() </font><font color="#0000ff" size="2">As Boolean<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> _valido<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;End Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Set</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> value </font><font color="#0000ff" size="2">As Boolean</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _valido = value<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Set<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; End Property<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Property</font><font size="2"> SubObject() </font><font color="#0000ff" size="2">As</font><font size="2"> Prova<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> _subObject<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Set</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> value </font><font color="#0000ff" size="2">As</font><font size="2"> Prova)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _subObject = value<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Set<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; End Property<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Property</font><font size="2"> NumeroDec() </font><font color="#0000ff" size="2">As Double<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> _numeroDec<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Set</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> value </font><font color="#0000ff" size="2">As Double</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _numeroDec = value<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Set<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;End Property<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Property</font><font size="2"> Array() </font><font color="#0000ff" size="2">As String</font><font size="2">()<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return</font><font size="2"> _array<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Get<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Set</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> value </font><font color="#0000ff" size="2">As String</font><font size="2">())<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _array = value<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Set<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; End Property<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Sub New</font><font size="2">(</font><font color="#0000ff" size="2">ByVal</font><font size="2"> ID </font><font color="#0000ff" size="2">As Integer</font><font size="2">, </font><font color="#0000ff" size="2">ByVal</font><font size="2"> Name </font><font color="#0000ff" size="2">As String</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _id = ID<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _name = Name<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; End Sub<br />
<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Public Function</font><font size="2"> SomeMethod() </font><font color="#0000ff" size="2">As String<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Return </font><font color="#a31515" size="2">&quot;Method: &quot;</font><font size="2"> &amp; _id<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; End Function<br />
<br />
</font><font color="#0000ff" size="2">&nbsp; End Class<br />
<br />
</font><font color="#0000ff" size="2">Sub</font><font size="2"> Main()<br />
</font><font color="#0000ff" size="2">&nbsp;&nbsp;&nbsp; Dim</font><font size="2"> objprova </font><font color="#0000ff" size="2">As New</font><font size="2"> Prova(1, </font><font color="#a31515" size="2">&quot;Nome Object&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp; objprova.Array = Split(</font><font color="#a31515" size="2">&quot;A E I O U&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp; objprova.NumeroDec = 100.34<br />
&nbsp;&nbsp;&nbsp; objprova.SubObject = </font><font color="#0000ff" size="2">New</font><font size="2"> Prova(2, </font><font color="#a31515" size="2">&quot;Nome - SubObject&quot;</font><font size="2">)<br />
&nbsp;&nbsp;&nbsp; objprova.Valido = </font><font color="#0000ff" size="2">True<br />
</font><font size="2">&nbsp;&nbsp;&nbsp; Console.WriteLine(PW.JSON.JSONHelper.ObjectToString(objprova))<br />
&nbsp;&nbsp;&nbsp; Console.ReadLine()<br />
&nbsp;<br />
</font><font color="#0000ff" size="2">End Sub<br />
End Module</font><br />
<br />
</code></div>
<p>&nbsp;</p>
<p>The resulting JSON string is:</p>
<p><code>{&quot;NumeroDec&quot;: 100.34, &quot;Name&quot;: &quot;Nome Object&quot;, &quot;Array&quot;: [&quot;A&quot;, &quot;E&quot;, &quot;I&quot;, &quot;O&quot;, &quot;U&quot;], &quot;SubObject&quot;: {&quot;NumeroDec&quot;: 0, &quot;Name&quot;: &quot;Nome - SubObject&quot;, &quot;Array&quot;: null, &quot;SubObject&quot;: null, &quot;Valido&quot;: false, &quot;ID&quot;: 2}, &quot;Valido&quot;: true, &quot;ID&quot;: 1}</code></p>
<p>Now we can see the <var>StringToObject</var> method that convert JSON string in Object. We can use the output of the previous example:</p>
<div class="code"><code><font color="#0000ff" size="2">Sub</font><font size="2"> Main()<br />
<br />
</font><font color="#0000ff" size="2">Dim</font><font size="2"> strJSON </font><font color="#0000ff" size="2">As String</font><font size="2"> = </font><font color="#a31515" size="2">&quot;{&quot;&quot;NumeroDec&quot;&quot;: 100.34, &quot;&quot;Name&quot;&quot;: &quot;&quot;Nome Object&quot;&quot;, &quot;</font><font size="2"> &amp; _<br />
</font><font color="#a31515" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot; &quot;&quot;Array&quot;&quot;: [&quot;&quot;A&quot;&quot;, &quot;&quot;E&quot;&quot;, &quot;&quot;I&quot;&quot;, &quot;&quot;O&quot;&quot;, &quot;&quot;U&quot;&quot;], &quot;</font><font size="2"> &amp; _<br />
</font><font color="#a31515" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot; &quot;&quot;SubObject&quot;&quot;: {&quot;&quot;NumeroDec&quot;&quot;: 0, &quot;&quot;Name&quot;&quot;: &quot;&quot;Nome - SubObject&quot;&quot;, &quot;</font><font size="2"> &amp; _<br />
</font><font color="#a31515" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot; &quot;&quot;Array&quot;&quot;: null, &quot;&quot;SubObject&quot;&quot;: null, &quot;&quot;Valido&quot;&quot;: false, &quot;&quot;ID&quot;&quot;: 2}, &quot;</font><font size="2"> &amp; _<br />
</font><font color="#a31515" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot; &quot;&quot;Valido&quot;&quot;: true, &quot;&quot;ID&quot;&quot;: 1}&quot;<br />
<br />
</font><font color="#0000ff" size="2">Dim</font><font size="2"> objprova </font><font color="#0000ff" size="2">As</font><font size="2"> Prova<br />
objprova = PW.JSON.JSONHelper.StringToObject(strJSON, </font><font color="#0000ff" size="2">GetType</font><font size="2">(Prova))<br />
<br />
Console.WriteLine(objprova.Name)<br />
Console.WriteLine(objprova.SubObject.Name)<br />
Console.ReadLine()<br />
&nbsp;<br />
</font><font color="#0000ff" size="2">End Sub<br />
</font></code></div>
<p>The result is:</p>
<p><code>Nome Object<br />
Nome - SubObject</code></p>
<p>If you want to see all the source code, or&nbsp;download the PW.JSON library (PW.JSON.dll)&nbsp;and you are a registered user, click <a href="/pozzware/Corsi/Programmazione/VB.NET/PW.JSON%20Dowload.aspx">here</a>.&nbsp;</p>

		</div>
	</div>
</div>
  

    <footer>
        <div id="contact" class="footer " style="padding-top: 20px;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4" style="text-align: center; margin-bottom: 30px;">
                        If you appreciate my work, please donate:
                        <div id="donate-button-container">
                        <div id="donate-button"></div>
                        <script src="https://www.paypalobjects.com/donate/sdk/donate-sdk.js" charset="UTF-8"></script>
                        <script>
                        PayPal.Donation.Button({
                        env:'production',
                        hosted_button_id:'4LWNVFJSBZX22',
                        image: {
                        src:'https://www.paypalobjects.com/en_US/IT/i/btn/btn_donateCC_LG.gif',
                        alt:'Donate with PayPal button',
                        title:'PayPal - The safer, easier way to pay online!',
                        }
                        }).render('#donate-button');
                        </script>
                        </div>

                    </div>
                    <div class="col-sm-3"></div>
                </div>
            </div>
        </div>
    </footer>

</body>  
</html>  