$ifndef _STRING
$define _STRING

$include <arith.sail>

val eq_string = {lem: "eq", coq: "generic_eq", _: "eq_string"} : (string, string) -> bool

overload operator == = {eq_string}

val concat_str = {coq: "String.append", lem: "stringAppend", _: "concat_str"} : (string, string) -> string

val "dec_str" : int -> string

val "hex_str" : int -> string

val bits_str = "string_of_bits" : forall 'n. bitvector('n, dec) -> string

val concat_str_bits : forall 'n. (string, bitvector('n, dec)) -> string

function concat_str_bits(str, x) = concat_str(str, bits_str(x))

val concat_str_dec : (string, int) -> string

function concat_str_dec(str, x) = concat_str(str, dec_str(x))

val print_endline = "print_endline" : string -> unit

val prerr_endline = "prerr_endline" : string -> unit

$endif
