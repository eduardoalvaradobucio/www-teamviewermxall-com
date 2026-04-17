<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> <html lang="en"> <head> <meta http-equiv="Content-Type" content="text/html;charset=utf-8"> <meta name="Author" content="Carl, Sunanda"> <title>Script Library: json.r</title> <link rel="canonical" href="http://www.rebol.org/view-script.r?script=json.r"/> <link rel="stylesheet" type="text/css" href="http://www.rebol.org/cgi-support/library.css">  <link rel="stylesheet" type="text/css" href="http://www.rebol.org/cgi-support/script-library.css">  </head> <body> <div class="frame"> <table cellpadding="0" cellspacing="0" style="width:100%"> <tr valign="top"> <td style="width:15%" class="main-menu"> <div class="logo menu-p1 ca"> <a href="#content-start" accesskey="S" title="Skip to content"></a> <a accesskey="1" href="http://www.rebol.org/index.r" title="Home"> <img src="http://www.rebol.org/graphics/rebol-logo.png" width="140" alt="logo"></a> </div> <div class="section-nav"> <a class="lsl fel hl-link" href="http://www.rebol.org/script-index.r">Script Library home</a> </div> <div class="menu-p2">  <br> <form class="menu-form" style="background: transparent" action="http://www.rebol.org/search.r" method="get"> <div class="menu-form"> <span style="font-size: 85%; font-weight:bold">&nbsp;&nbsp;Find scripts</span>&nbsp;&nbsp; <a class="fsl" href="http://www.rebol.org/boiler.r?display=introduction.html">Help</a> <br> <input type="text" alt="Find" name="find" size="20"> <input type="hidden" alt="Form" name="form" value="yes"> </div> </form> <form class="menu-form" style="background: transparent" action="http://www.rebol.org/view-script.r" method="get"> <div class="menu-form"> <span style="font-size: 85%; font-weight:bold">&nbsp;&nbsp;Go to script:</span> <br> <input type="text" alt="Go to" name="script" size="20"> </div> </form> <br> <a class="hl2-link" href="http://www.rebol.org/st-topic-details.r?tag=//recent">New and updated</a> <hr> <a class="hl2-link" href="http://www.rebol.org/script-popularity.r">Popular scripts</a> <hr>&nbsp;<a href="http://www.rebol.org/cpt-active-posts.r">Discussions</a><br>&nbsp;<a href="http://www.rebol.org/cpt-recent-docs.r">Scripts with documentation</a><br> &nbsp;<a class="fsl" href="http://www.rebol.org/boiler.r?display=first-time.html">First time here?</a> <br> &nbsp;<a class="fsl" href="http://www.rebol.org/boiler.r?display=terms.html">Terms</a> <hr> <a class="hl2-link" href="http://www.rebol.org/st-topic-index.r">Tag index</a> <span style="font-weight:bold">Applications</span> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//demo">Demos</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//game">Games</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//tool">Tools</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//how-to">How-to</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//faq">FAQ</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//tutorial">Tutorials</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//idiom">Idioms</a> <br> <span style="font-weight:bold">Code</span> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//one-liner">1-liners</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//function">Functions</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//module">Modules</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//internet">Internet</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//cgi">CGI</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=domain//ftp">FTP</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//email">Mail</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//ui">UI / GUI</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=//database">Database</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//files">Files</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=//text">Text</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=domain//markup">Markup</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//html">HTML</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//protocol">Protocols</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//dialect">Dialects</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//math">Math</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//game">Games</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=domain//patch">Patches</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//package">Packages</a> <br><br> <a href="http://www.rebol.org/st-topic-details.r?tag=//all" class="hl2-link">All scripts</a> <a href="http://www.rebol.org/st-topic-details.r?tag=level//beginner">Beginner</a> <br> <a href="http://www.rebol.org/st-topic-details.r?tag=level//intermediate">Intermediate</a> <br> <a href="http://www.rebol.org/st-topic-details.r?tag=level//advanced">Advanced</a> <br> <hr> <a class="hl2-link" href="http://www.rebol.org/stats-search-history.r">Recent searches</a> <hr>  <a class="hl2-link" href="http://www.rebol.org/download-librarian.r">Download: desktop</a> </div> <div class="menu-p1 ca" style="margin-top: 2em"> <hr> <a class="hl-link" href="http://www.rebol.org/boiler.r?display=accessibility.html"> Accessibility</a> <a class="hl-link" href="http://www.rebol.org/boiler.r?display=about.html" accesskey="5">About / FAQ</a> <br> <a href="http://www.rebol.org/lm-index.r" class="hl-link">Member's&nbsp;lounge</a> <a class="fsl hl-link" href="http://www.rebol.org/feedback-form.r" accesskey="9">Contact/Feedback</a> <a class="fsl hl-link" href="http://www.rebol.org/list-links.r">Other REBOL links</a> </div> <form action="http://www.rebol.org/logon.r" method="POST" enctype="application/x-www-form-urlencoded"> <div class="main-menu" style="text-align:right; font-size: 90%;"> <span style="font-weight:bold">Membership:</span> <br> member name <br> <input type="text" alt="member name" name="user-name" value="" size="12"> <br> password <br> <input type="password" alt="password" name="password" value="" size="12"> <br> Remember? <input type="checkbox" alt="rememember" name="remember" class="main-menu" value="ticked"> <br> <input type="submit" alt="logon button" name="logon" value="logon"> <br> <a href="http://www.rebol.org/rl-mf01.r" class="fsl fel">Not a member? Please join</a> </div> </form> <div class="main-menu"> <div style="font-size: 80%; text-align: right; color: green; background-color: transparent">17-Apr 14:31 UTC<br>[0.064] 38.442k</div> </div> <div class="main-menu logo ca"> <a href="http://www.rebol.com"><img src="http://www.rebol.org/graphics/powered-rebol-logo.png" width="140" alt="logo"></a> &nbsp; </div> </td> <td>  <div class="section-bar"> Script Library: 1247 scripts </div> <div class="section-nav"> <ul> <li> <a href="http://www.rebol.org/index.r"> <img src="http://www.rebol.org/graphics/home-button-sbs-00.png" alt="Home"> </a> </li> <li> <a href="http://www.rebol.org/script-index.r"> <img src="http://www.rebol.org/graphics/sl-button-sbs-00.png" alt="Script library"> </a> </li> <li> <a href="http://www.rebol.org/aga-index.r"> <img src="http://www.rebol.org/graphics/aga-button-sbs-00.png" alt="AltME Archive"> </a> </li> <li> <a href="http://www.rebol.org/ml-index.r"> <img src="http://www.rebol.org/graphics/ml-button-sbs-00.png" alt="Mailing list"> </a> </li> <li> <a href="http://www.rebol.org/art-index.r"> <img src="http://www.rebol.org/graphics/art-button-sbs-00.png" alt="Articles Index"> </a> </li> <li> <a href="http://www.rebol.org/site-search.r" accesskey="4"> <img src="http://www.rebol.org/graphics/search-button-sbs-00.png" alt="Site search"> </a> </li> </ul> </div> &nbsp; <div class="content" id="content-start"><table border="1" class="s-nav-menu context-menu"><tr><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/view-script.r?script=json.r" rel="nofollow" >View in B&amp;W</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/documentation.r?script=json.r">View documentation</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/discussion.r?script=json.r">View discussion [139 posts]</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="license-help.r?script-name=json.r">License</a></td></tr><tr><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/download-a-script.r?script-name=json.r" rel="nofollow">Download script</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/script-history.r?script-name=json.r">History</a></td><td class="context-menu ca" style="padding: 0 1em;"><span style="font-size:80%">Other scripts by: </span><a href="http://www.rebol.org/cpt-list-scripts.r?user-name=greggirwin">greggirwin</a> &middot; <a href="http://www.rebol.org/cpt-list-scripts.r?user-name=romano">romano</a></td></tr></table></div><h2>json.r</h2><div style="white-space:pre; width:80em; overflow:auto; font-family:monospace;font-size:75%">{json.r JSON to Rebol converter for REBOL(TM)
Copyright (c) 2005-2013 JSON.org

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the &quot;Software&quot;), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The Software shall be used for Good, not Evil.

THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
}

rebol [
    File: %json.r
    Title: &quot;JSON to Rebol converter&quot;
    Author: [&quot;Romano Paolo Tenca&quot; &quot;Gregg Irwin&quot; &quot;Douglas Crockford&quot;]
    Date: 5-Sep-2013
    Version: 0.0.9
    History: [
        0.0.1 13-Nov-2003 &quot;First release&quot; Romano
        0.0.2 26-Jan-2005 {
            Fixed array parsing
            Fixed empty string parsing
            Added comment parsing
            Added REBOL-to-JSON conversion
            Added option to output hash&#033; instead of object&#033; values (to test)
        } Gregg
        0.0.3 27-Jan-2005 {
            Aligned code with Romano's latest changes.
        } Gregg
        0.0.4 31-May-2005 {
            Added unicode decoding. (I think they were Romano's funcs I added)
        } Gregg
        0.0.5 14-Apr-2008 {
            Added &quot;/&quot; to the escaped char list (found by Will Arp).
        } Gregg
        0.0.6 20-Apr-2008 {
            Cleanup and adjustment for changes in the spec. I've left the 
            comment support in place for now, though Doug Crockford says 
            there are no comments in JSON.

            Checked against the test suite from JSON.org. Test #18 should 
            fail, but doesn't. It's a depth limit not enforced here.
        }
        0.0.7 21-Apr-2008 {
            Doug Crockford is confident that comments will not be re-added
            to the JSON spec, so all comment support has been removed.
            The comment rules also handled whitespace, so there have been a
            number of rule changes due to that.
        } Gregg
        0.0.8 1-Feb-2010 {
            Fixed naive escaping.
        } Gregg
        0.0.9 5-Sep-2013 {
            Changed property-list and array-list rules to use ANY instead of
            recursion, to handle larger datasets without hitting PARSE limits.
        } Gregg
    ]
    Purpose: &quot;Convert a JSON string to Rebol data, and vice versa.&quot;
    Notes: {
        From Romano:
        
        - Parse rules can be more robust if loops are used instead of
          recursion I used recursion to remain near the bnf grammar

        - Todo: better error handling

        - Because json has relaxed limits about property names
          in the rebol object can appear words that load cannot understand
          for example:
                ;json
                {&quot;/word&quot;: 3}
            become
                ;rebol
                make object&#033; [
                    /word: 3
                ]
            can be a problem if you do:

                load mold json-to-rebol str

            (Gregg added option to convert to objects or hashes as a test)

    }
    library: [
        level: 'intermediate
        platform: 'all
        type: [tool]
        domain: [xml parse]
        tested-under: none
        support: none
        license: 'GPL   ; should be &quot;JSON&quot;, but REBOL.org doesn't support that.
                        ; BSD/MIT is closer to JSON, but Romano used GPL.
        see-also: none
    ]
]

json-ctx: <span class="sc-func">context</span> [
    emit-type: <span class="sc-data">object&#033;</span>
    make-objects?: <span class="sc-func">does</span> [<span class="sc-data">object&#033;</span> <span class="sc-func">=</span> emit-type]
    cache: <span class="sc-func">copy</span> []
    push: <span class="sc-func">func</span> [val] [cache: <span class="sc-func">insert/only</span> cache val]
    pop: <span class="sc-func">has</span> [tmp] [tmp: <span class="sc-func">first</span> cache: <span class="sc-func">back</span> cache <span class="sc-func">remove</span> cache tmp]
    out: res: s: none
    emit: <span class="sc-func">func</span> [value][res: <span class="sc-func">insert/only</span> res value]

    make-translate-func: <span class="sc-func">func</span> [
        table [<span class="sc-data">series&#033;</span>] <span class="sc-string">&quot;Escape table, as pairs of from/to string&#033; or char&#033; values.&quot;</span>
        <span class="sc-refinement">/local</span> make-rule rules
    ][
        <span class="sc-cmt">; There are some NEW-LINE calls in this function, which may seem
</span>        <span class="sc-cmt">; superfluous. It's true that it may be a rare case where you want to
</span>        <span class="sc-cmt">; inspect the generated function if used dynamically, but this may also
</span>        <span class="sc-cmt">; be used to generate static functions to be included. That is, you may
</span>        <span class="sc-cmt">; use it as a code generator. In that case, the extra formatting helps.
</span>        
        make-rule: <span class="sc-func">func</span> [
            <span class="sc-string">&quot;Returns a parse rule to translate one value to another in the input.&quot;</span>
            orig
            new
        ] [
            orig: <span class="sc-func">form</span> orig
            new: <span class="sc-func">form</span> new
            <span class="sc-func">new-line/all</span> <span class="sc-func">compose</span> [
                (orig)
                (<span class="sc-func">to-paren</span> <span class="sc-func">compose</span> [pos: <span class="sc-func">change/part</span> pos (new) (<span class="sc-func">length?</span> orig)])
                :pos
            ] off
        ]

        <span class="sc-cmt">; Create a block of parse rules from the table of value translations.        
</span>        rules: <span class="sc-func">copy</span> []
        <span class="sc-func">foreach</span> [from <span class="sc-func">to</span>] table [
            <span class="sc-func">repend</span> rules [make-rule from <span class="sc-func">to</span> '|]
        ]
        <span class="sc-func">append</span> rules 'skip <span class="sc-cmt">; The final rule
</span>
        <span class="sc-cmt">; Make the formatting of the generated code a little nicer, putting 
</span>        <span class="sc-cmt">; each parse rule on a separate line.
</span>        <span class="sc-func">new-line</span> rules on
        <span class="sc-func">new-line/skip</span> <span class="sc-func">next</span> rules on <span class="sc-integer">2</span>
        
        <span class="sc-cmt">; Return a function that uses the parse rules we just generated from 
</span>        <span class="sc-cmt">; the map.
</span>        <span class="sc-func">func</span> [
            <span class="sc-string">&quot;Return a copy of the input string, after translating values.&quot;</span>
            string [<span class="sc-data">any-string&#033;</span>]
            <span class="sc-refinement">/local</span> pos
        ] <span class="sc-func">compose/deep</span> [
            <span class="sc-func">parse/all</span> string [<span class="sc-func">any</span> [pos: (rules)]]
            string
        ]
        
    ]

    decode-unicode-char: <span class="sc-func">func</span> [val <span class="sc-refinement">/local</span> c] [
        c: <span class="sc-func">to-integer</span> <span class="sc-func">debase/base</span> val <span class="sc-integer">16</span>
        <span class="sc-func">rejoin</span> <span class="sc-func">either</span> c <span class="sc-func">&lt;</span> <span class="sc-integer">128</span> [[<span class="sc-func">to-char</span> c]] [
            <span class="sc-func">either</span> c <span class="sc-func">&lt;</span> <span class="sc-integer">2048</span> [[
                <span class="sc-func">to-char</span> (<span class="sc-integer">192</span> <span class="sc-func">or</span> <span class="sc-func">to-integer</span> (c <span class="sc-func">/</span> <span class="sc-integer">64</span>))
                <span class="sc-func">to-char</span> (<span class="sc-integer">128</span> <span class="sc-func">or</span> (c <span class="sc-func">and</span> <span class="sc-integer">63</span>))
            ]] [[
                <span class="sc-func">to-char</span> (<span class="sc-integer">224</span> <span class="sc-func">or</span> <span class="sc-func">to-integer</span> (c <span class="sc-func">/</span> <span class="sc-integer">4096</span>))
                <span class="sc-func">to-char</span> (<span class="sc-integer">128</span> <span class="sc-func">or</span> ((<span class="sc-func">to-integer</span> (c <span class="sc-func">/</span> <span class="sc-integer">64</span>)) <span class="sc-func">and</span> <span class="sc-integer">63</span>))
                <span class="sc-func">to-char</span> (<span class="sc-integer">128</span> <span class="sc-func">or</span> (c <span class="sc-func">and</span> <span class="sc-integer">63</span>))
            ]]
        ]
    ]
    replace-unicode-escapes: <span class="sc-func">func</span> [s [<span class="sc-data">string&#033;</span>] <span class="sc-refinement">/local</span> c uc] [
        <span class="sc-func">parse</span> s [
            <span class="sc-func">any</span> [
                some chars
                | [mark: <span class="sc-char">#&quot;\&quot;</span>
                   <span class="sc-char">#&quot;u&quot;</span> <span class="sc-func">copy</span> c <span class="sc-integer">4</span> hex-c (
                    <span class="sc-func">change/part</span> mark uc: decode-unicode-char c <span class="sc-integer">6</span>  <span class="sc-cmt">; 6 = length &quot;\uxxxx&quot;
</span>                    ) <span class="sc-integer">-1</span> <span class="sc-func">skip</span> :mark
                | escaped]
            ]
        ]
    ]

    encode-control-char: <span class="sc-func">func</span> [char [<span class="sc-data">char&#033;</span> <span class="sc-data">integer&#033;</span>]] [
         <span class="sc-func">join</span> <span class="sc-string">&quot;\u&quot;</span> <span class="sc-func">at</span> <span class="sc-func">to-hex</span> <span class="sc-func">to</span> <span class="sc-data">integer&#033;</span> char <span class="sc-integer">5</span>
    ]

    escape-control-chars: <span class="sc-func">func</span> [
        <span class="sc-string">&quot;Convert all control chars in string to \uxxxx format&quot;</span>
        s [<span class="sc-data">any-string&#033;</span>] <span class="sc-refinement">/local</span> ctrl-ch c
    ][
        ctrl-ch: <span class="sc-func">charset</span> [<span class="sc-char">#&quot;^@&quot;</span> <span class="sc-func">-</span> <span class="sc-char">#&quot;^_&quot;</span>]
        <span class="sc-func">parse/all</span> s [
            <span class="sc-func">any</span> [
                mark: <span class="sc-func">copy</span> c ctrl-ch (
                    <span class="sc-func">change/part</span> mark encode-control-char <span class="sc-func">to</span> <span class="sc-data">char&#033;</span> c <span class="sc-integer">1</span>
                ) <span class="sc-integer">5</span> <span class="sc-func">skip</span>
                | <span class="sc-func">skip</span>
            ]
        ]
        s
    ]

    <span class="sc-cmt">;rules
</span>    space-char: <span class="sc-func">charset</span> <span class="sc-string">&quot; ^-^/&quot;</span>
    space: [<span class="sc-func">any</span> space-char]
    sep: [space <span class="sc-char">#&quot;,&quot;</span> space]
    JSON-object: [
        <span class="sc-char">#&quot;{&quot;</span> (push res: <span class="sc-func">insert/only</span> res <span class="sc-func">copy</span> [] res: res/-1)
        space opt property-list
        <span class="sc-char">#&quot;}&quot;</span> (
            res: <span class="sc-func">back</span> pop res: <span class="sc-func">either</span> make-objects? [
                <span class="sc-func">change</span> res <span class="sc-func">make</span> <span class="sc-data">object&#033;</span> <span class="sc-func">first</span> res
            ][
                <span class="sc-func">change/only</span> res <span class="sc-func">make</span> emit-type <span class="sc-func">first</span> res
            ]
        )
    ]
    property-list: [
        <span class="sc-cmt">; 05-Sep-2013 changed from using property-list rule recursively to using ANY.
</span>        <span class="sc-cmt">; i.e., was: property opt [sep property-list]
</span>        property <span class="sc-func">any</span> [sep property]
    ]
    property: [
        string-literal space <span class="sc-char">#&quot;:&quot;</span> (emit <span class="sc-func">either</span> make-objects? [<span class="sc-func">to-set-word</span> s] [s])
        JSON-value
    ]
    array-list: [
        <span class="sc-cmt">; 05-Sep-2013 changed from using array-list rule recursively to using ANY.
</span>        <span class="sc-cmt">; i.e., was: JSON-value opt [sep array-list]
</span>        JSON-value <span class="sc-func">any</span> [sep JSON-value]
    ]
    JSON-array: [
        <span class="sc-char">#&quot;[&quot;</span> (push emit <span class="sc-func">copy</span> [] res: res/-1)
        space opt array-list
        <span class="sc-char">#&quot;]&quot;</span> (res: pop)
    ]

    JSON-value: [
        space
        [
            <span class="sc-string">&quot;true&quot;</span>  (emit true)  |
            <span class="sc-string">&quot;false&quot;</span> (emit false) |
            <span class="sc-string">&quot;null&quot;</span>  (emit none)  |
            JSON-object |
            JSON-array  |
            string-literal (emit s) |
            <span class="sc-func">copy</span> s numeric-literal (emit <span class="sc-func">load</span> s)
            mark:   <span class="sc-cmt">; set mark for failure location
</span>        ]
        space
    ]
    ex-chars: <span class="sc-func">charset</span> <span class="sc-string">{\&quot;^-^/}</span>
    chars: <span class="sc-func">complement</span> ex-chars
    escaped: <span class="sc-func">charset</span> <span class="sc-string">{&quot;\/&gt;bfnrt}</span>
    escape-table: [
    <span class="sc-cmt">;   JSON REBOL
</span>        <span class="sc-string">{\&quot;}</span> <span class="sc-string">&quot;^&quot;&quot;</span>   <span class="sc-cmt">; &quot; reset syntax highlighting
</span>        <span class="sc-string">{\\}</span> <span class="sc-string">&quot;\&quot;</span>
        <span class="sc-string">{\/}</span> <span class="sc-string">&quot;/&quot;</span>
        <span class="sc-string">{\&gt;}</span> <span class="sc-string">&quot;&gt;&quot;</span>
        <span class="sc-string">{\b}</span> <span class="sc-string">&quot;^H&quot;</span>
        <span class="sc-string">{\f}</span> <span class="sc-string">&quot;^L&quot;</span>
        <span class="sc-string">{\r}</span> <span class="sc-string">&quot;^M&quot;</span>
        <span class="sc-string">{\n}</span> <span class="sc-string">&quot;^/&quot;</span>
        <span class="sc-string">{\t}</span> <span class="sc-string">&quot;^-&quot;</span>
    ]
    
    esc-json-to-reb: make-translate-func escape-table
    esc-reb-to-json: make-translate-func <span class="sc-func">reverse</span> <span class="sc-func">copy</span> escape-table
    
    digits: <span class="sc-func">charset</span> <span class="sc-string">&quot;0123456789&quot;</span>
    non-zero-digits: <span class="sc-func">charset</span> <span class="sc-string">&quot;123456789&quot;</span>
    hex-c: <span class="sc-func">union</span> digits <span class="sc-func">charset</span> <span class="sc-string">&quot;ABCDEFabcdef&quot;</span>

    string-literal: [
        <span class="sc-char">#&quot;^&quot;&quot;</span> <span class="sc-func">copy</span> s [
            <span class="sc-func">any</span> [some chars | <span class="sc-char">#&quot;\&quot;</span> [<span class="sc-char">#&quot;u&quot;</span> <span class="sc-integer">4</span> hex-c | escaped]]
        ] <span class="sc-char">#&quot;^&quot;&quot;</span> (
            <span class="sc-func">if</span> <span class="sc-func">not</span> <span class="sc-func">empty?</span> s: <span class="sc-func">any</span> [s <span class="sc-func">copy</span> <span class="sc-string">&quot;&quot;</span>] [
                replace-unicode-escapes s
                esc-json-to-reb s
            ]
        )
    ]

    <span class="sc-cmt">; Added = naming convention to these rules to avoid naming confusion
</span>    <span class="sc-cmt">; with sign, int, exp, and number. Those names are used here to match
</span>    <span class="sc-cmt">; the names in the JSON spec on JSON.org.
</span>    sign=: [<span class="sc-char">#&quot;-&quot;</span>]
    <span class="sc-cmt">; Integers can't have leading zeros, but zero by itself is valid.
</span>    int=: [[<span class="sc-integer">1</span> <span class="sc-integer">1</span> non-zero-digits <span class="sc-func">any</span> digits] | [<span class="sc-integer">1</span> <span class="sc-integer">1</span> digits]]
    frac=: [<span class="sc-char">#&quot;.&quot;</span> some digits]
    exp=: [<span class="sc-char">#&quot;e&quot;</span> opt [<span class="sc-char">#&quot;+&quot;</span> | <span class="sc-char">#&quot;-&quot;</span>] some digits]
    number=: [
        opt sign= int= opt [frac= exp= | frac= | exp=]
    ]
    numeric-literal: :number=

    <span class="sc-cmt">; Public functions
</span>    system/words/JSON-to-REBOL: JSON-to-REBOL: <span class="sc-func">func</span> [
        [<span class="sc-func">catch</span>]
        <span class="sc-string">&quot;Convert a JSON string to rebol data&quot;</span>
        str [<span class="sc-data">string&#033;</span>] <span class="sc-string">&quot;The JSON string&quot;</span>
        <span class="sc-refinement">/objects-to</span> <span class="sc-string">&quot;Convert JSON objects to blocks instead of REBOL objects&quot;</span>
            type [<span class="sc-data">datatype&#033;</span>] <span class="sc-string">&quot;Specific block type to make (e.g. hash&#033;)&quot;</span>
    ][
        <span class="sc-func">if</span> <span class="sc-func">all</span> [type  <span class="sc-func">not</span> <span class="sc-func">any-block?</span> <span class="sc-func">make</span> type none] [
            <span class="sc-func">throw</span> <span class="sc-func">make</span> <span class="sc-data">error&#033;</span> <span class="sc-string">&quot;Only block types can be used for object output&quot;</span>
        ]
        emit-type: <span class="sc-func">any</span> [type <span class="sc-data">object&#033;</span>]
        out: res: <span class="sc-func">copy</span> []
        mark: str
        <span class="sc-cmt">;either parse/all str [any [comments JSON-value] comments] [
</span>        <span class="sc-func">either</span> <span class="sc-func">parse/all</span> str [space [JSON-object | JSON-array] space] [
            <span class="sc-func">pick</span> out <span class="sc-integer">1</span>
        ][
            <span class="sc-func">throw</span> <span class="sc-func">make</span> <span class="sc-data">error&#033;</span> <span class="sc-func">reform</span> [
                <span class="sc-string">&quot;Invalid JSON string. Near:&quot;</span>
                <span class="sc-func">either</span> <span class="sc-func">tail?</span> mark [<span class="sc-string">&quot;&lt;end of input&gt;&quot;</span>] [<span class="sc-func">mold</span> <span class="sc-func">copy/part</span> mark <span class="sc-integer">40</span>]
            ]
        ]
    ]

    <span class="sc-cmt">;-----------------------------------------------------------
</span>    <span class="sc-cmt">;-- REBOL to JSON conversion
</span>    <span class="sc-cmt">;-----------------------------------------------------------
</span>    dent:    <span class="sc-func">copy</span> <span class="sc-string">&quot;&quot;</span>
    dent-size: <span class="sc-integer">4</span>
    indent:  <span class="sc-func">does</span> [<span class="sc-func">insert/dup</span> dent <span class="sc-char">#&quot; &quot;</span> dent-size]
    outdent: <span class="sc-func">does</span> [<span class="sc-func">remove/part</span> dent dent-size]
    pad-names: off
    padded-name-len: <span class="sc-integer">0</span>

    <span class="sc-cmt">; Is this ugly or what?&#033;
</span>    longest-field-name: <span class="sc-func">func</span> [obj [<span class="sc-data">object&#033;</span>] <span class="sc-refinement">/local</span> flds] [
        flds: <span class="sc-func">copy</span> <span class="sc-func">next</span> <span class="sc-func">first</span> obj
        <span class="sc-func">if</span> <span class="sc-func">empty?</span> flds [<span class="sc-func">return</span> none]
        <span class="sc-func">forall</span> flds [flds/1: <span class="sc-func">form</span> flds/1]
        flds: <span class="sc-func">head</span> flds
        <span class="sc-func">sort/compare</span> flds <span class="sc-func">func</span> [a b] [(<span class="sc-func">length?</span> a) <span class="sc-func">&lt;</span> (<span class="sc-func">length?</span> b)]
        <span class="sc-func">last</span> flds
    ]

    pad: <span class="sc-func">func</span> [string len] [
        <span class="sc-func">head</span> <span class="sc-func">insert/dup</span> <span class="sc-func">tail</span> string <span class="sc-char">#&quot; &quot;</span> len <span class="sc-func">-</span> <span class="sc-func">length?</span> string
    ]

    set-padded-name-len: <span class="sc-func">func</span> [obj] [
        <span class="sc-cmt">; add 3 to account for quotes and colon
</span>        padded-name-len: <span class="sc-integer">3</span> <span class="sc-func">+</span> <span class="sc-func">length?</span> <span class="sc-func">any</span> [longest-field-name obj <span class="sc-string">&quot;&quot;</span>]
    ]

    single-line-cleanup: make-translate-func [<span class="sc-string">&quot;{ &quot;</span> <span class="sc-string">&quot;{&quot;</span>  <span class="sc-string">&quot;[ &quot;</span> <span class="sc-string">&quot;[&quot;</span>  <span class="sc-string">&quot; }&quot;</span> <span class="sc-string">&quot;}&quot;</span>  <span class="sc-string">&quot; ]&quot;</span> <span class="sc-string">&quot;]&quot;</span>]

    single-line-reformat: <span class="sc-func">func</span> [
        <span class="sc-string">&quot;Reformats a block/object to a single line if it's short enough.&quot;</span>
        val <span class="sc-refinement">/local</span> s map
    ] [
        <span class="sc-func">either</span> <span class="sc-integer">80</span> <span class="sc-func">&gt;=</span> <span class="sc-func">length?</span> <span class="sc-func">join</span> dent s: <span class="sc-func">trim/lines</span> <span class="sc-func">copy</span> val [
            single-line-cleanup s
        ] [val]
    ]

    json-escaped-str: <span class="sc-func">func</span> [val] [
        esc-reb-to-json val
        escape-control-chars val
    ]

    reb-to-json-name: <span class="sc-func">func</span> [val] [
        pad <span class="sc-func">join</span> <span class="sc-func">mold</span> <span class="sc-func">form</span> val <span class="sc-string">&quot;:&quot;</span> padded-name-len
    ]

    add-quotes: <span class="sc-func">func</span> [str] [<span class="sc-func">append</span> <span class="sc-func">insert</span> str <span class="sc-string">{&quot;}</span> <span class="sc-string">{&quot;}</span>]

    reb-to-JSON-value: <span class="sc-func">func</span> [val <span class="sc-refinement">/local</span> tmp] [
        <span class="sc-func">switch/default</span> <span class="sc-func">type?/word</span> val [
            <span class="sc-data">none&#033;</span>    [<span class="sc-string">&quot;null&quot;</span>]
            <span class="sc-data">logic&#033;</span>   [<span class="sc-func">pick</span> [<span class="sc-string">&quot;true&quot;</span> <span class="sc-string">&quot;false&quot;</span>] val]
            <span class="sc-data">integer&#033;</span> [<span class="sc-func">form</span> val]
            <span class="sc-data">decimal&#033;</span> [<span class="sc-func">form</span> val]
            <span class="sc-cmt">;string&#033;  [add-quotes json-escaped-str copy val]
</span>            <span class="sc-data">object&#033;</span>  [reb-to-json-object val]
            <span class="sc-data">word&#033;</span>    [reb-to-JSON-value <span class="sc-func">get</span> val]
        ] [
            <span class="sc-func">either</span> <span class="sc-func">any-block?</span> val [reb-to-json-block val] [
                add-quotes <span class="sc-func">either</span> <span class="sc-func">any-string?</span> val [
                    json-escaped-str <span class="sc-func">copy</span> val
                ] [<span class="sc-func">form</span> val]
            ]
        ]
    ]

    reb-to-json-block: <span class="sc-func">func</span> [block [<span class="sc-data">any-block&#033;</span>] <span class="sc-refinement">/local</span> result sep] [
        indent
        result: <span class="sc-func">copy</span> <span class="sc-string">&quot;[^/&quot;</span>
        <span class="sc-func">foreach</span> value block [
            <span class="sc-func">append</span> result <span class="sc-func">rejoin</span> [dent reb-to-JSON-value value <span class="sc-string">&quot;,^/&quot;</span>]
        ]
        outdent
        <span class="sc-func">append</span> <span class="sc-func">clear</span> <span class="sc-func">any</span> [<span class="sc-func">find/last</span> result <span class="sc-string">&quot;,&quot;</span>  <span class="sc-func">tail</span> result] <span class="sc-func">rejoin</span> [<span class="sc-string">&quot;^/&quot;</span> dent <span class="sc-string">&quot;]&quot;</span>]
        single-line-reformat result
    ]

    reb-to-json-object: <span class="sc-func">func</span> [object [<span class="sc-data">object&#033;</span>] <span class="sc-refinement">/local</span> result sep] [
        <span class="sc-func">if</span> pad-names [set-padded-name-len object]
        indent
        result: <span class="sc-func">copy</span> <span class="sc-string">&quot;{^/&quot;</span>
        <span class="sc-func">foreach</span> word <span class="sc-func">next</span> <span class="sc-func">first</span> object [
            <span class="sc-func">append</span> result <span class="sc-func">rejoin</span> [
                dent reb-to-json-name :word <span class="sc-string">&quot; &quot;</span>
                reb-to-JSON-value object/:word <span class="sc-string">&quot;,^/&quot;</span>
            ]
        ]
        outdent
        <span class="sc-func">append</span> <span class="sc-func">clear</span> <span class="sc-func">any</span> [<span class="sc-func">find/last</span> result <span class="sc-string">&quot;,&quot;</span>  <span class="sc-func">tail</span> result] <span class="sc-func">rejoin</span> [<span class="sc-string">&quot;^/&quot;</span> dent <span class="sc-string">&quot;}&quot;</span>]
        single-line-reformat result
    ]

    <span class="sc-cmt">;public functions
</span>    system/words/rebol-to-json: rebol-to-json: <span class="sc-func">func</span> [
        [<span class="sc-func">catch</span>]
        <span class="sc-string">&quot;Convert REBOL data to a JSON string&quot;</span>
        data
        <span class="sc-refinement">/pad-names</span> <span class="sc-string">&quot;pad property names with spaces so values line up&quot;</span>
        <span class="sc-refinement">/block-indent</span> <span class="sc-string">&quot;Number of spaces to indent nested structures&quot;</span>
            size [<span class="sc-data">integer&#033;</span>]
        <span class="sc-refinement">/local</span> result
    ][
        dent-size: <span class="sc-func">any</span> [size <span class="sc-integer">4</span>]
        self/pad-names: pad-names
        result: <span class="sc-func">make</span> <span class="sc-data">string&#033;</span> <span class="sc-integer">4000</span>
        <span class="sc-func">foreach</span> value <span class="sc-func">compose/only</span> [(data)] [
            <span class="sc-func">append</span> result reb-to-JSON-value value
        ]
        result
    ]
]</div><span style="display:none"> halt ;; to terminate script if DO'ne from webpage</span><div class="context-menu">&lt;&lt; <a href="http://www.rebol.org/view-script.r?color=yes&amp;script=jpg-analyse.r" accesskey="["  class="fsl">jpg-analyse.r</a> &middot; <a href="http://www.rebol.org/view-script.r?color=yes&amp;script=jukebox.r" accesskey="]"  class="fsl">jukebox.r</a> &gt;&gt;</div><div class="footnote"><div class="lsh ca">Notes</div><ul><li class="lsdata1">json.r has a <a href="http://www.rebol.org/discussion.r?script=json.r" class="fsl">discussion thread. Posts: 139. Most recent: 7-Apr</a></li><li class="lsdata2">json.r has <a href="http://www.rebol.org/documentation.r?script=json.r" class="fsl"> documentation.</a></li></ul></div></div> </td> </tr> </table> <div class="footer"> <ul> <li> <a href="http://www.rebol.org/index.r">[Home]</a> </li> <li> <a href="http://www.rebol.org/script-index.r">[Script library]</a> </li> <li> <a href="http://www.rebol.org/aga-index.r">[AltME archives]</a> </li> <li> <a href="http://www.rebol.org/ml-index.r">[Mailing list archive]</a> </li> <li> <a href="http://www.rebol.org/art-index.r">[Articles]</a> </li> <li> <a href="http://www.rebol.org/boiler.r?display=accessibility" accesskey="0">[Access keys]</a> </li> <li> <a href="#reb-over">[Top]</a> </li> </ul> </div> </div> </body> </html>
