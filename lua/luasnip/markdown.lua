return{

s({trig=";bf", name="Bold", snippetType="autosnippet", wordTrig=false},
    fmta([[
    **<>**
    ]],
    {i(1)})),

s({trig=";it", name="Italics", snippetType="autosnippet", wordTrig=false},
    fmta([[
    *<>*
    ]],
    {i(1)})),

s({trig=";[]", name="Link", snippetType="autosnippet", wordTrig=false},
    fmta([[
    [<>](<>)
    ]],
    {i(1), i(2)}))
}
