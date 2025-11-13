local function in_mathzone()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end

local visual_selection_or_insert = function(args, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return sn(nil, t( parent.snippet.env.LS_SELECT_RAW))
  else  -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end


return {
  s({trig=";;", snippetType="autosnippet", dscr="Underscore", wordTrig=false},
    {t("_{"), i(1), t("}")},
    {condition = in_mathzone}
),

  s({trig=";''", snippetType="autosnippet", dscr="Underscore", wordTrig=false},
    {t("^{"), i(1), t("}")},
    {condition = in_mathzone}
  ),
}

