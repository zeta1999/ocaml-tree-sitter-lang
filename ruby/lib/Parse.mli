
(**
    Functions for parsing ruby programs into a CST.

    Generated by ocaml-tree-sitter.
*)

(** Parse a ruby program from a string into a typed OCaml CST. *)
val string : ?src_file:string -> string -> CST.program option

(** Parse a ruby program from a file into a typed OCaml CST. *)
val file : string -> CST.program option

(** Whether to print debugging information. Default: false. *)
val debug : bool ref

(** The original tree-sitter parser. *)
val ts_parser : Tree_sitter_bindings.Tree_sitter_API.ts_parser

(** Parse a program into a tree-sitter CST. *)
val parse_source_string :
   ?src_file:string -> string -> Tree_sitter_run.Tree_sitter_parsing.t

(** Parse a source file into a tree-sitter CST. *)
val parse_source_file : string -> Tree_sitter_run.Tree_sitter_parsing.t

(** Parse a tree-sitter CST into an OCaml typed CST. *)
val parse_input_tree :
  Tree_sitter_run.Tree_sitter_parsing.t ->
  CST.program option
