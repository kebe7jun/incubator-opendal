(* Generated by ocaml-rs *)

open! Bigarray

(* file: _type.rs *)

type operator
type reader
type metadata

(* file: metadata.rs *)

external metadata_is_file: metadata -> bool  = "metadata_is_file"
external metadata_is_dir: metadata -> bool  = "metadata_is_dir"
external metadata_content_length: metadata -> int64  = "metadata_content_length"
external metadata_content_md5: metadata -> string option  = "metadata_content_md5"
external metadata_content_type: metadata -> string option  = "metadata_content_type"
external metadata_content_disposition: metadata -> string option  = "metadata_content_disposition"
external metadata_etag: metadata -> string option  = "metadata_etag"
external metadata_last_modified: metadata -> int64 option  = "metadata_last_modified"

(* file: mod.rs *)

external operator: string -> (string * string) list -> (operator, string) Result.t  = "operator"
external blocking_stat: operator -> string -> (metadata, string) Result.t  = "blocking_stat"
external blocking_is_exist: operator -> string -> (bool, string) Result.t  = "blocking_is_exist"
external blocking_create_dir: operator -> string -> (bool, string) Result.t  = "blocking_create_dir"
external blocking_read: operator -> string -> (char array, string) Result.t  = "blocking_read"
external blocking_reader: operator -> string -> (reader, string) Result.t  = "blocking_reader"
external blocking_write: operator -> string -> bytes -> (unit, string) Result.t  = "blocking_write"
external blocking_copy: operator -> string -> string -> (unit, string) Result.t  = "blocking_copy"
external blocking_rename: operator -> string -> string -> (unit, string) Result.t  = "blocking_rename"
external blocking_delete: operator -> string -> (unit, string) Result.t  = "blocking_delete"
external blocking_remove: operator -> string array -> (unit, string) Result.t  = "blocking_remove"
external blocking_remove_all: operator -> string -> (unit, string) Result.t  = "blocking_remove_all"

(* file: reader.rs *)

external reader_read: reader -> bytes -> (int, string) Result.t  = "reader_read"
external reader_seek: reader -> Seek_from.seek_from -> (int64, string) Result.t  = "reader_seek"
