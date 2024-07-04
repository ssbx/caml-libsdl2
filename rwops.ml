(* OCamlSDL2 - An OCaml interface to the SDL2 library
 Copyright (C) 2013 Florent Monnier
 
 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.
 
 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*)
(* Read / Write operations *)

type t

external from_mem : bytes -> t
  = "caml_SDL_RWFromMem"

external from_const_mem : string -> t
  = "caml_SDL_RWFromConstMem"

external from_file : filename:string -> mode:string -> t
  = "caml_SDL_RWFromFile"

type input = [
  | `Filename of string  (* provide the input by its filename *)
  | `Buffer of bytes     (* provide the input data as a bytes buffer *)
  | `String of string    (* provide the input data as a string buffer *)
  ]

let from_input = function
  | `Filename(filename) -> from_file ~filename ~mode:"r"
  | `Buffer(mem) -> from_mem mem
  | `String(mem) -> from_const_mem mem

let from_input_opt = function
  | `Filename(filename) -> Some(from_file ~filename ~mode:"r")
  | `Buffer(mem) -> Some(from_mem mem)
  | `String(mem) -> Some(from_const_mem mem)
  | _ -> None

external alloc : unit -> t = "caml_SDL_AllocRW"
external free : t -> unit = "caml_SDL_FreeRW"

external close : t -> unit = "caml_SDL_CloseRW"

external size : t -> int64 = "caml_SDL_RWsize"

type seek =
  | SEEK_SET
  | SEEK_CUR
  | SEEK_END

external seek : t -> offset:int64 -> seek -> int64
  = "caml_SDL_RWseek"

external tell : t -> int64
  = "caml_SDL_RWtell"

type uint8 = int

type uint16 = int
type uint32 = int32
type uint64 = int64

external readU8 : t -> uint8 = "caml_SDL_ReadU8"
external writeU8 : t -> uint8 -> unit = "caml_SDL_WriteU8"

module BigEndian = struct

  external read16 : t -> uint16 = "caml_SDL_ReadBE16"
  external read32 : t -> uint32 = "caml_SDL_ReadBE32"
  external read64 : t -> uint64 = "caml_SDL_ReadBE64"

  external write16 : t -> uint16 -> unit = "caml_SDL_WriteBE16"
  external write32 : t -> uint32 -> unit = "caml_SDL_WriteBE32"
  external write64 : t -> uint64 -> unit = "caml_SDL_WriteBE64"

end

module LittleEndian = struct

  external read16 : t -> uint16 = "caml_SDL_ReadLE16"
  external read32 : t -> uint32 = "caml_SDL_ReadLE32"
  external read64 : t -> uint64 = "caml_SDL_ReadLE64"

  external write16 : t -> uint16 -> unit = "caml_SDL_WriteLE16"
  external write32 : t -> uint32 -> unit = "caml_SDL_WriteLE32"
  external write64 : t -> uint64 -> unit = "caml_SDL_WriteLE64"

end

