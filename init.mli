(* OCamlSDL2 - An OCaml interface to the SDL2 library
 Copyright (C) 2013 Florent Monnier

 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.

 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*)
(** Initialisation *)

type subsystem = [
  | `TIMER
  | `AUDIO
  | `VIDEO
  | `JOYSTICK
  | `HAPTIC
  | `GAMECONTROLLER
  | `EVENTS
  | `EVERYTHING
  | `NOPARACHUTE
  ]

external init : subsystem list -> unit = "caml_SDL_Init"
(** {{:https://wiki.libsdl.org/SDL_Init}api doc} *)


external init_subsystem : subsystem list -> unit = "caml_SDL_InitSubSystem"
(** {{:https://wiki.libsdl.org/SDL_InitSubSystem}api doc} *)

