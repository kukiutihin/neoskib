; Neovim locals: scopes, definitions and references.
; Powers scope-aware highlighting and motions.

; ------------------------------------------------------------------ scopes
(source_file) @local.scope
(bind)        @local.scope
(lambda_expr) @local.scope
(letin_expr)  @local.scope
(match_arm)   @local.scope

; -------------------------------------------------------------- definitions
; function bindings (a binding that takes parameters)
(bind
  name: (pat (var_pat (id) @local.definition.function))
  parameters: (parameter))

; value bindings
(bind
  name: (pat (var_pat (id) @local.definition.var)))

; parameters of functions and lambdas
(parameter
  pattern: (pat (var_pat (id) @local.definition.parameter)))

; names bound inside match patterns
(match_arm
  pattern: (pat (var_pat (id) @local.definition.var)))
(cons_pat (pat (var_pat (id) @local.definition.var)))
(tuple_pat (pat (var_pat (id) @local.definition.var)))

; types
(typ_decl name: (ctor_id) @local.definition.type)
(alias_decl name: (ctor_id) @local.definition.type)
(generic_params (typ_var (id) @local.definition.type))
(data_typ_ctor name: (ctor_id) @local.definition.macro)

; ------------------------------------------------------------- references
(value (id) @local.reference)
(typ_var (id) @local.reference)
(typ_ctor ctor: (ctor_id) @local.reference)
(ctor_expr (ctor_id) @local.reference)
(ctor_pat ctor: (ctor_id) @local.reference)
