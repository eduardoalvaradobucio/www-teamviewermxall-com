<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> <html lang="en"> <head> <meta http-equiv="Content-Type" content="text/html;charset=utf-8"> <meta name="Author" content="Carl, Sunanda"> <title>Script Library: json.r</title>  <link rel="stylesheet" type="text/css" href="http://www.rebol.org/cgi-support/library.css">  <link rel="stylesheet" type="text/css" href="http://www.rebol.org/cgi-support/script-library.css">  </head> <body> <div class="frame"> <table cellpadding="0" cellspacing="0" style="width:100%"> <tr valign="top"> <td style="width:15%" class="main-menu"> <div class="logo menu-p1 ca"> <a href="#content-start" accesskey="S" title="Skip to content"></a> <a accesskey="1" href="http://www.rebol.org/index.r" title="Home"> <img src="http://www.rebol.org/graphics/rebol-logo.png" width="140" alt="logo"></a> </div> <div class="section-nav"> <a class="lsl fel hl-link" href="http://www.rebol.org/script-index.r">Script Library home</a> </div> <div class="menu-p2">  <br> <form class="menu-form" style="background: transparent" action="http://www.rebol.org/search.r" method="get"> <div class="menu-form"> <span style="font-size: 85%; font-weight:bold">&nbsp;&nbsp;Find scripts</span>&nbsp;&nbsp; <a class="fsl" href="http://www.rebol.org/boiler.r?display=introduction.html">Help</a> <br> <input type="text" alt="Find" name="find" size="20"> <input type="hidden" alt="Form" name="form" value="yes"> </div> </form> <form class="menu-form" style="background: transparent" action="http://www.rebol.org/view-script.r" method="get"> <div class="menu-form"> <span style="font-size: 85%; font-weight:bold">&nbsp;&nbsp;Go to script:</span> <br> <input type="text" alt="Go to" name="script" size="20"> </div> </form> <br> <a class="hl2-link" href="http://www.rebol.org/st-topic-details.r?tag=//recent">New and updated</a> <hr> <a class="hl2-link" href="http://www.rebol.org/script-popularity.r">Popular scripts</a> <hr>&nbsp;<a href="http://www.rebol.org/cpt-active-posts.r">Discussions</a><br>&nbsp;<a href="http://www.rebol.org/cpt-recent-docs.r">Scripts with documentation</a><br> &nbsp;<a class="fsl" href="http://www.rebol.org/boiler.r?display=first-time.html">First time here?</a> <br> &nbsp;<a class="fsl" href="http://www.rebol.org/boiler.r?display=terms.html">Terms</a> <hr> <a class="hl2-link" href="http://www.rebol.org/st-topic-index.r">Tag index</a> <span style="font-weight:bold">Applications</span> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//demo">Demos</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//game">Games</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//tool">Tools</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//how-to">How-to</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//faq">FAQ</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//tutorial">Tutorials</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//idiom">Idioms</a> <br> <span style="font-weight:bold">Code</span> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//one-liner">1-liners</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//function">Functions</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//module">Modules</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//internet">Internet</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//cgi">CGI</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=domain//ftp">FTP</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//email">Mail</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//ui">UI / GUI</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=//database">Database</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//files">Files</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=//text">Text</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=domain//markup">Markup</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//html">HTML</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=type//protocol">Protocols</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//dialect">Dialects</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=//math">Math</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=domain//game">Games</a> &middot; <a href="http://www.rebol.org/st-topic-details.r?tag=domain//patch">Patches</a> <br>&nbsp;<a href="http://www.rebol.org/st-topic-details.r?tag=type//package">Packages</a> <br><br> <a href="http://www.rebol.org/st-topic-details.r?tag=//all" class="hl2-link">All scripts</a> <a href="http://www.rebol.org/st-topic-details.r?tag=level//beginner">Beginner</a> <br> <a href="http://www.rebol.org/st-topic-details.r?tag=level//intermediate">Intermediate</a> <br> <a href="http://www.rebol.org/st-topic-details.r?tag=level//advanced">Advanced</a> <br> <hr> <a class="hl2-link" href="http://www.rebol.org/stats-search-history.r">Recent searches</a> <hr>  <a class="hl2-link" href="http://www.rebol.org/download-librarian.r">Download: desktop</a> </div> <div class="menu-p1 ca" style="margin-top: 2em"> <hr> <a class="hl-link" href="http://www.rebol.org/boiler.r?display=accessibility.html"> Accessibility</a> <a class="hl-link" href="http://www.rebol.org/boiler.r?display=about.html" accesskey="5">About / FAQ</a> <br> <a href="http://www.rebol.org/lm-index.r" class="hl-link">Member's&nbsp;lounge</a> <a class="fsl hl-link" href="http://www.rebol.org/feedback-form.r" accesskey="9">Contact/Feedback</a> <a class="fsl hl-link" href="http://www.rebol.org/list-links.r">Other REBOL links</a> </div> <form action="http://www.rebol.org/logon.r" method="POST" enctype="application/x-www-form-urlencoded"> <div class="main-menu" style="text-align:right; font-size: 90%;"> <span style="font-weight:bold">Membership:</span> <br> member name <br> <input type="text" alt="member name" name="user-name" value="" size="12"> <br> password <br> <input type="password" alt="password" name="password" value="" size="12"> <br> Remember? <input type="checkbox" alt="rememember" name="remember" class="main-menu" value="ticked"> <br> <input type="submit" alt="logon button" name="logon" value="logon"> <br> <a href="http://www.rebol.org/rl-mf01.r" class="fsl fel">Not a member? Please join</a> </div> </form> <div class="main-menu"> <div style="font-size: 80%; text-align: right; color: green; background-color: transparent">17-Apr 14:06 UTC<br>[0.103] 24.759k</div> </div> <div class="main-menu logo ca"> <a href="http://www.rebol.com"><img src="http://www.rebol.org/graphics/powered-rebol-logo.png" width="140" alt="logo"></a> &nbsp; </div> </td> <td>  <div class="section-bar"> Script Library: 1247 scripts </div> <div class="section-nav"> <ul> <li> <a href="http://www.rebol.org/index.r"> <img src="http://www.rebol.org/graphics/home-button-sbs-00.png" alt="Home"> </a> </li> <li> <a href="http://www.rebol.org/script-index.r"> <img src="http://www.rebol.org/graphics/sl-button-sbs-00.png" alt="Script library"> </a> </li> <li> <a href="http://www.rebol.org/aga-index.r"> <img src="http://www.rebol.org/graphics/aga-button-sbs-00.png" alt="AltME Archive"> </a> </li> <li> <a href="http://www.rebol.org/ml-index.r"> <img src="http://www.rebol.org/graphics/ml-button-sbs-00.png" alt="Mailing list"> </a> </li> <li> <a href="http://www.rebol.org/art-index.r"> <img src="http://www.rebol.org/graphics/art-button-sbs-00.png" alt="Articles Index"> </a> </li> <li> <a href="http://www.rebol.org/site-search.r" accesskey="4"> <img src="http://www.rebol.org/graphics/search-button-sbs-00.png" alt="Site search"> </a> </li> </ul> </div> &nbsp; <div class="content" id="content-start"><table border="1" class="s-nav-menu context-menu"><tr><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/view-script.r?color=yes&amp;script=json.r" rel="nofollow"  style="color:red">View in color</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/documentation.r?script=json.r">View documentation</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/discussion.r?script=json.r">View discussion [139 posts]</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="license-help.r?script-name=json.r">License</a></td></tr><tr><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/download-a-script.r?script-name=json.r" rel="nofollow">Download script</a></td><td class="context-menu ca" style="padding: 0 1em;"><a href="http://www.rebol.org/script-history.r?script-name=json.r">History</a></td><td class="context-menu ca" style="padding: 0 1em;"><span style="font-size:80%">Other scripts by: </span><a href="http://www.rebol.org/cpt-list-scripts.r?user-name=greggirwin">greggirwin</a> &middot; <a href="http://www.rebol.org/cpt-list-scripts.r?user-name=romano">romano</a></td></tr></table></div><h2>json.r</h2><div style="white-space:pre; width:80em; overflow:auto; font-family:monospace;font-size:75%">{json.r JSON to Rebol converter for REBOL(TM)
Copyright (c) 2005-2013 JSON.org

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The Software shall be used for Good, not Evil.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
}

rebol [
    File: %json.r
    Title: "JSON to Rebol converter"
    Author: ["Romano Paolo Tenca" "Gregg Irwin" "Douglas Crockford"]
    Date: 5-Sep-2013
    Version: 0.0.9
    History: [
        0.0.1 13-Nov-2003 "First release" Romano
        0.0.2 26-Jan-2005 {
            Fixed array parsing
            Fixed empty string parsing
            Added comment parsing
            Added REBOL-to-JSON conversion
            Added option to output hash! instead of object! values (to test)
        } Gregg
        0.0.3 27-Jan-2005 {
            Aligned code with Romano's latest changes.
        } Gregg
        0.0.4 31-May-2005 {
            Added unicode decoding. (I think they were Romano's funcs I added)
        } Gregg
        0.0.5 14-Apr-2008 {
            Added "/" to the escaped char list (found by Will Arp).
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
    Purpose: "Convert a JSON string to Rebol data, and vice versa."
    Notes: {
        From Romano:
        
        - Parse rules can be more robust if loops are used instead of
          recursion I used recursion to remain near the bnf grammar

        - Todo: better error handling

        - Because json has relaxed limits about property names
          in the rebol object can appear words that load cannot understand
          for example:
                ;json
                {"/word": 3}
            become
                ;rebol
                make object! [
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
        license: 'GPL   ; should be "JSON", but REBOL.org doesn't support that.
                        ; BSD/MIT is closer to JSON, but Romano used GPL.
        see-also: none
    ]
]

json-ctx: context [
    emit-type: object!
    make-objects?: does [object! = emit-type]
    cache: copy []
    push: func [val] [cache: insert/only cache val]
    pop: has [tmp] [tmp: first cache: back cache remove cache tmp]
    out: res: s: none
    emit: func [value][res: insert/only res value]

    make-translate-func: func [
        table [series!] "Escape table, as pairs of from/to string! or char! values."
        /local make-rule rules
    ][
        ; There are some NEW-LINE calls in this function, which may seem
        ; superfluous. It's true that it may be a rare case where you want to
        ; inspect the generated function if used dynamically, but this may also
        ; be used to generate static functions to be included. That is, you may
        ; use it as a code generator. In that case, the extra formatting helps.
        
        make-rule: func [
            "Returns a parse rule to translate one value to another in the input."
            orig
            new
        ] [
            orig: form orig
            new: form new
            new-line/all compose [
                (orig)
                (to-paren compose [pos: change/part pos (new) (length? orig)])
                :pos
            ] off
        ]

        ; Create a block of parse rules from the table of value translations.        
        rules: copy []
        foreach [from to] table [
            repend rules [make-rule from to '|]
        ]
        append rules 'skip ; The final rule

        ; Make the formatting of the generated code a little nicer, putting 
        ; each parse rule on a separate line.
        new-line rules on
        new-line/skip next rules on 2
        
        ; Return a function that uses the parse rules we just generated from 
        ; the map.
        func [
            "Return a copy of the input string, after translating values."
            string [any-string!]
            /local pos
        ] compose/deep [
            parse/all string [any [pos: (rules)]]
            string
        ]
        
    ]

    decode-unicode-char: func [val /local c] [
        c: to-integer debase/base val 16
        rejoin either c &lt; 128 [[to-char c]] [
            either c &lt; 2048 [[
                to-char (192 or to-integer (c / 64))
                to-char (128 or (c and 63))
            ]] [[
                to-char (224 or to-integer (c / 4096))
                to-char (128 or ((to-integer (c / 64)) and 63))
                to-char (128 or (c and 63))
            ]]
        ]
    ]
    replace-unicode-escapes: func [s [string!] /local c uc] [
        parse s [
            any [
                some chars
                | [mark: #"\"
                   #"u" copy c 4 hex-c (
                    change/part mark uc: decode-unicode-char c 6  ; 6 = length "\uxxxx"
                    ) -1 skip :mark
                | escaped]
            ]
        ]
    ]

    encode-control-char: func [char [char! integer!]] [
         join "\u" at to-hex to integer! char 5
    ]

    escape-control-chars: func [
        "Convert all control chars in string to \uxxxx format"
        s [any-string!] /local ctrl-ch c
    ][
        ctrl-ch: charset [#"^@" - #"^_"]
        parse/all s [
            any [
                mark: copy c ctrl-ch (
                    change/part mark encode-control-char to char! c 1
                ) 5 skip
                | skip
            ]
        ]
        s
    ]

    ;rules
    space-char: charset " ^-^/"
    space: [any space-char]
    sep: [space #"," space]
    JSON-object: [
        #"{" (push res: insert/only res copy [] res: res/-1)
        space opt property-list
        #"}" (
            res: back pop res: either make-objects? [
                change res make object! first res
            ][
                change/only res make emit-type first res
            ]
        )
    ]
    property-list: [
        ; 05-Sep-2013 changed from using property-list rule recursively to using ANY.
        ; i.e., was: property opt [sep property-list]
        property any [sep property]
    ]
    property: [
        string-literal space #":" (emit either make-objects? [to-set-word s] [s])
        JSON-value
    ]
    array-list: [
        ; 05-Sep-2013 changed from using array-list rule recursively to using ANY.
        ; i.e., was: JSON-value opt [sep array-list]
        JSON-value any [sep JSON-value]
    ]
    JSON-array: [
        #"[" (push emit copy [] res: res/-1)
        space opt array-list
        #"]" (res: pop)
    ]

    JSON-value: [
        space
        [
            "true"  (emit true)  |
            "false" (emit false) |
            "null"  (emit none)  |
            JSON-object |
            JSON-array  |
            string-literal (emit s) |
            copy s numeric-literal (emit load s)
            mark:   ; set mark for failure location
        ]
        space
    ]
    ex-chars: charset {\"^-^/}
    chars: complement ex-chars
    escaped: charset {"\/&gt;bfnrt}
    escape-table: [
    ;   JSON REBOL
        {\"} "^""   ; " reset syntax highlighting
        {\\} "\"
        {\/} "/"
        {\&gt;} "&gt;"
        {\b} "^H"
        {\f} "^L"
        {\r} "^M"
        {\n} "^/"
        {\t} "^-"
    ]
    
    esc-json-to-reb: make-translate-func escape-table
    esc-reb-to-json: make-translate-func reverse copy escape-table
    
    digits: charset "0123456789"
    non-zero-digits: charset "123456789"
    hex-c: union digits charset "ABCDEFabcdef"

    string-literal: [
        #"^"" copy s [
            any [some chars | #"\" [#"u" 4 hex-c | escaped]]
        ] #"^"" (
            if not empty? s: any [s copy ""] [
                replace-unicode-escapes s
                esc-json-to-reb s
            ]
        )
    ]

    ; Added = naming convention to these rules to avoid naming confusion
    ; with sign, int, exp, and number. Those names are used here to match
    ; the names in the JSON spec on JSON.org.
    sign=: [#"-"]
    ; Integers can't have leading zeros, but zero by itself is valid.
    int=: [[1 1 non-zero-digits any digits] | [1 1 digits]]
    frac=: [#"." some digits]
    exp=: [#"e" opt [#"+" | #"-"] some digits]
    number=: [
        opt sign= int= opt [frac= exp= | frac= | exp=]
    ]
    numeric-literal: :number=

    ; Public functions
    system/words/JSON-to-REBOL: JSON-to-REBOL: func [
        [catch]
        "Convert a JSON string to rebol data"
        str [string!] "The JSON string"
        /objects-to "Convert JSON objects to blocks instead of REBOL objects"
            type [datatype!] "Specific block type to make (e.g. hash!)"
    ][
        if all [type  not any-block? make type none] [
            throw make error! "Only block types can be used for object output"
        ]
        emit-type: any [type object!]
        out: res: copy []
        mark: str
        ;either parse/all str [any [comments JSON-value] comments] [
        either parse/all str [space [JSON-object | JSON-array] space] [
            pick out 1
        ][
            throw make error! reform [
                "Invalid JSON string. Near:"
                either tail? mark ["&lt;end of input&gt;"] [mold copy/part mark 40]
            ]
        ]
    ]

    ;-----------------------------------------------------------
    ;-- REBOL to JSON conversion
    ;-----------------------------------------------------------
    dent:    copy ""
    dent-size: 4
    indent:  does [insert/dup dent #" " dent-size]
    outdent: does [remove/part dent dent-size]
    pad-names: off
    padded-name-len: 0

    ; Is this ugly or what?!
    longest-field-name: func [obj [object!] /local flds] [
        flds: copy next first obj
        if empty? flds [return none]
        forall flds [flds/1: form flds/1]
        flds: head flds
        sort/compare flds func [a b] [(length? a) &lt; (length? b)]
        last flds
    ]

    pad: func [string len] [
        head insert/dup tail string #" " len - length? string
    ]

    set-padded-name-len: func [obj] [
        ; add 3 to account for quotes and colon
        padded-name-len: 3 + length? any [longest-field-name obj ""]
    ]

    single-line-cleanup: make-translate-func ["{ " "{"  "[ " "["  " }" "}"  " ]" "]"]

    single-line-reformat: func [
        "Reformats a block/object to a single line if it's short enough."
        val /local s map
    ] [
        either 80 &gt;= length? join dent s: trim/lines copy val [
            single-line-cleanup s
        ] [val]
    ]

    json-escaped-str: func [val] [
        esc-reb-to-json val
        escape-control-chars val
    ]

    reb-to-json-name: func [val] [
        pad join mold form val ":" padded-name-len
    ]

    add-quotes: func [str] [append insert str {"} {"}]

    reb-to-JSON-value: func [val /local tmp] [
        switch/default type?/word val [
            none!    ["null"]
            logic!   [pick ["true" "false"] val]
            integer! [form val]
            decimal! [form val]
            ;string!  [add-quotes json-escaped-str copy val]
            object!  [reb-to-json-object val]
            word!    [reb-to-JSON-value get val]
        ] [
            either any-block? val [reb-to-json-block val] [
                add-quotes either any-string? val [
                    json-escaped-str copy val
                ] [form val]
            ]
        ]
    ]

    reb-to-json-block: func [block [any-block!] /local result sep] [
        indent
        result: copy "[^/"
        foreach value block [
            append result rejoin [dent reb-to-JSON-value value ",^/"]
        ]
        outdent
        append clear any [find/last result ","  tail result] rejoin ["^/" dent "]"]
        single-line-reformat result
    ]

    reb-to-json-object: func [object [object!] /local result sep] [
        if pad-names [set-padded-name-len object]
        indent
        result: copy "{^/"
        foreach word next first object [
            append result rejoin [
                dent reb-to-json-name :word " "
                reb-to-JSON-value object/:word ",^/"
            ]
        ]
        outdent
        append clear any [find/last result ","  tail result] rejoin ["^/" dent "}"]
        single-line-reformat result
    ]

    ;public functions
    system/words/rebol-to-json: rebol-to-json: func [
        [catch]
        "Convert REBOL data to a JSON string"
        data
        /pad-names "pad property names with spaces so values line up"
        /block-indent "Number of spaces to indent nested structures"
            size [integer!]
        /local result
    ][
        dent-size: any [size 4]
        self/pad-names: pad-names
        result: make string! 4000
        foreach value compose/only [(data)] [
            append result reb-to-JSON-value value
        ]
        result
    ]
]</div><span style="display:none"> halt ;; to terminate script if DO'ne from webpage</span><div class="context-menu">&lt;&lt; <a href="http://www.rebol.org/view-script.r?script=jpg-analyse.r" accesskey="["  class="fsl">jpg-analyse.r</a> &middot; <a href="http://www.rebol.org/view-script.r?script=jukebox.r" accesskey="]"  class="fsl">jukebox.r</a> &gt;&gt;</div><div class="footnote"><div class="lsh ca">Notes</div><ul><li class="lsdata1">json.r has a <a href="http://www.rebol.org/discussion.r?script=json.r" class="fsl">discussion thread. Posts: 139. Most recent: 7-Apr</a></li><li class="lsdata2">json.r has <a href="http://www.rebol.org/documentation.r?script=json.r" class="fsl"> documentation.</a></li></ul></div></div> </td> </tr> </table> <div class="footer"> <ul> <li> <a href="http://www.rebol.org/index.r">[Home]</a> </li> <li> <a href="http://www.rebol.org/script-index.r">[Script library]</a> </li> <li> <a href="http://www.rebol.org/aga-index.r">[AltME archives]</a> </li> <li> <a href="http://www.rebol.org/ml-index.r">[Mailing list archive]</a> </li> <li> <a href="http://www.rebol.org/art-index.r">[Articles]</a> </li> <li> <a href="http://www.rebol.org/boiler.r?display=accessibility" accesskey="0">[Access keys]</a> </li> <li> <a href="#reb-over">[Top]</a> </li> </ul> </div> </div> </body> </html>
