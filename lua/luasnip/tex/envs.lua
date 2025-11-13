return {
	s({trig = "fig", name = "Include image", snippetType = "snippet" },
    {
        t("\\begin{figure}[ht]"),
        t({"",""}), t("    \\centering"),
        t({"",""}), t("    \\includesvg[width="), i(1, "0.7"), t("\\columnwidth]{"), i(2), t("}"),
        t({"",""}), t("    \\caption{"), i(3), t("}"),
        t({"",""}), t("    \\label{fig:"), rep(2), t("}"),
        t({"",""}), t("\\end{figure}")
    }
),

s({trig="beg", snippetType="snippet", dscr="Begin and end an arbitrary environment"},
    fmta(
        [[
        \begin{<>}
            <>
        \end{<>}
        ]],
        {i(1),i(2),rep(1),}
    )
),
-- end env
}
