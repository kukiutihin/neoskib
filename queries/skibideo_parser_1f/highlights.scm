; Neovim tree-sitter highlights for the 1f / skibideo language.
; Uses Neovim's standard capture names (also tolerated by the tree-sitter CLI).

; ---------------------------------------------------------------- keywords
"пусть" @keyword
"и"     @keyword
"в"     @keyword
"из"    @keyword
"рек"   @keyword.modifier

"тип"   @keyword.type
"алиас" @keyword.type

"если"        @keyword.conditional
"то"          @keyword.conditional
"иначе"       @keyword.conditional
"сопоставить" @keyword.conditional
"с"           @keyword.conditional
"когда"       @keyword.conditional

"лямбда" @keyword.function

; --------------------------------------------------------------- operators
"="  @operator
"->" @operator
"::" @operator
"|"  @operator

(unary_op)   @operator
(mul_op)     @operator
(add_op)     @operator
(append_op)  @operator
(colon_op)   @operator
(compare_op) @operator
(and_op)     @operator
(or_op)      @operator
(op_name)    @operator

; ------------------------------------------------------------- punctuation
[ "(" ")" "[" "]" ] @punctuation.bracket
[ "<" ">" ]         @punctuation.bracket
[ "," ";" ]         @punctuation.delimiter
":"                 @punctuation.delimiter

; ------------------------------------------------------------------- types
(typ_skib)   @type.builtin
(typ_char)   @type.builtin
(typ_string) @type.builtin
(typ_int)    @type.builtin
(typ_float)  @type.builtin
(typ_bool)   @type.builtin

(typ_ctor ctor: (ctor_id) @type)
(typ_decl name: (ctor_id) @type.definition)
(alias_decl name: (ctor_id) @type.definition)
(generic_params (typ_var (id) @type.parameter))
(typ_var (id) @type.parameter)

; ------------------------------------------------------------ constructors
(ctor_expr (ctor_id) @constructor)
(ctor_pat ctor: (ctor_id) @constructor)
(data_typ_ctor name: (ctor_id) @constructor)

; ---------------------------------------------------------------- literals
(int_lit)    @number
(float_lit)  @number.float
(string_lit) @string
(char_lit)   @character
(bool_lit)   @boolean
(skib_lit)   @constant.builtin

; --------------------------------------------------------------- variables
(id) @variable

; more specific captures below override the generic (id) @variable above
(value (id) @variable)
(apply_expr function: (value (id) @function.call))
(parameter pattern: (pat (var_pat (id) @variable.parameter)))
(bind
  name: (pat (var_pat (id) @function))
  parameters: (parameter))
(wildcard_pat) @variable.builtin

; ----------------------------------------------------------------- comment
(comment) @comment @spell
