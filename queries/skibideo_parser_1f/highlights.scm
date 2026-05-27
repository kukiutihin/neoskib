; Keywords
"пусть" @keyword
"рек" @keyword.modifier
"и" @keyword
"тип" @keyword
"из" @keyword
"если" @keyword
"то" @keyword
"иначе" @keyword
"сопоставить" @keyword
"с" @keyword
"лямбда" @keyword

; Operators
"=" @operator
"->" @operator
"|" @operator
":" @operator
(unary_op) @operator
(mul_op) @operator
(add_op) @operator
(colon_op) @operator
(append_op) @operator
(compare_op) @operator
(and_op) @operator
(or_op) @operator
(hash_op) @operator
(semi_op) @operator
(comma_op) @operator
(apply_op) @operator
(op_name) @operator

; Punctuation
"," @punctuation.delimiter
":" @punctuation.delimiter
"(" @punctuation.bracket
")" @punctuation.bracket
"<" @punctuation.bracket
">" @punctuation.bracket

; Types
(typ_skib) @type.builtin
(typ_char) @type.builtin
(typ_string) @type.builtin
(typ_int) @type.builtin
(typ_float) @type.builtin
(typ_bool) @type.builtin
(typ_var) @type
(typ_ctor ctor: (ctor_id) @type)

; Literals
(int_lit) @number
(float_lit) @number.float
(string_lit) @string
(bool_lit) @boolean
(char_lit) @character
(skib_lit) @constant.builtin

; Identifiers
(id) @variable
(bind name: (pat (var_pat (id) @function)))
(parameter (pat (var_pat (id) @variable.parameter)))
(data_typ_ctor data_typ_ctor_name: (ctor_id) @constructor)

