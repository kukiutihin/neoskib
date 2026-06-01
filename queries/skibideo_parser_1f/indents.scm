; Neovim indentation (nvim-treesitter `indent` module — experimental).
; Conservative: indent the contents of bracketed groups, dedent on close.

[
  (paren_expr)
  (list_expr)
  (tuple_pat)
  (typ_tuple)
  (generic_params)
] @indent.begin

[ ")" "]" ">" ] @indent.end
