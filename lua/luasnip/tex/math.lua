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

local generate_matrix = function(args, snip)
	local rows = tonumber(snip.captures[2])
	local cols = tonumber(snip.captures[3])
	local nodes = {}
	local ins_indx = 1
	for j = 1, rows do
		table.insert(nodes, r(ins_indx, tostring(j) .. "x1", i(1)))
		ins_indx = ins_indx + 1
		for k = 2, cols do
			table.insert(nodes, t(" & "))
			table.insert(nodes, r(ins_indx, tostring(j) .. "x" .. tostring(k), i(1)))
			ins_indx = ins_indx + 1
		end
		table.insert(nodes, t({ "\\\\", "" }))
	end
	-- fix last node.
	nodes[#nodes] = t("\\\\")
	return sn(nil, nodes)
end

return {
-- Math
postfix({trig="hat", match_pattern = [[[\\%w%.%_%-%"%']+$]], snippetType="autosnippet",dscr="postfix hat when in math mode"},
    {l("\\hat{" .. l.POSTFIX_MATCH .. "}")}, 
    { condition=in_mathzone }
) ,
postfix({trig="vec", match_pattern = [[[\\%w%.%_%-%"%']+$]] ,snippetType="autosnippet",dscr="postfix vec when in math mode"},
    {l("\\vec{" .. l.POSTFIX_MATCH .. "}")}, 
    { condition=in_mathzone }
),

s({trig=";a", snippetType="autosnippet", desc="alpha",wordTrig=false},
    {t("\\alpha"),},
    {condition =in_mathzone}
),

s({trig=";b", snippetType="autosnippet", desc="beta",wordTrig=false},
    {t("\\beta"),},
    { condition=in_mathzone }
),

s({trig=";g", snippetType="autosnippet", desc="gamma",wordTrig=false},
    {t("\\gamma"),},
    { condition=in_mathzone }
),



s({trig=";d", snippetType="autosnippet", desc="delta",wordTrig=false},
    {t("\\delta"),},
    { condition = in_mathzone }
),
s({trig=";e", snippetType="autosnippet", desc="varepsilon",wordTrig=false},
    {t("\\varepsilon"),},
    { condition = in_mathzone }
),
s({trig=";ve", snippetType="autosnippet", desc="epsilon",wordTrig=false},
    {t("\\epsilon"),},
    { condition = in_mathzone }
),
postfix({trig="vec", match_pattern = [[[\\%w%.%_%-%"%']+$]] ,snippetType="autosnippet",dscr="postfix vec when in math mode"},
    {l("\\vec{" .. l.POSTFIX_MATCH .. "}")}, 
    {condition = in_mathzone}
    ),
}
