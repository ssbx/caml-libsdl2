(* OCamlSDL2 - An OCaml interface to the SDL2 library
 Copyright (C) 2013 Florent Monnier

 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.

 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*)
(* 2D rendering functions *)

type t = Render_type.renderer

external create_window_and_renderer :
  width:int -> height:int ->
  flags:Window.window_flags list ->
  Window.t * t
  = "caml_SDL_CreateWindowAndRenderer"

type renderer_flags =
  | Software
  | Accelerated
  | PresentVSync
  | TargetTexture

let string_of_renderer_flags = function
  | Software        -> "Software"
  | Accelerated     -> "Accelerated"
  | PresentVSync    -> "PresentVSync"
  | TargetTexture   -> "TargetTexture"

let renderer_flags_of_string s =
  match String.lowercase_ascii s with
  | "software"      -> Software
  | "accelerated"   -> Accelerated
  | "presentvsync"  -> PresentVSync
  | "targettexture" -> TargetTexture
  | _ -> invalid_arg "Render.renderer_flags_of_string"

external create_renderer :
  win:Window.t -> index:int ->
  flags:renderer_flags list -> t
  = "caml_SDL_CreateRenderer"

external set_logical_size : t -> int * int -> unit
  = "caml_SDL_RenderSetLogicalSize"

external set_logical_size2 : t -> width:int -> height:int -> unit
  = "caml_SDL_RenderSetLogicalSize2"

external set_viewport :
  t -> Rect.t -> unit
  = "caml_SDL_RenderSetViewport"

external set_clip_rect :
  t -> Rect.t -> unit
  = "caml_SDL_RenderSetClipRect"

external set_draw_color :
  t -> rgb:(int * int * int) -> a:int -> unit
  = "caml_SDL_SetRenderDrawColor"

external set_draw_color3 :
  t -> r:int -> g:int -> b:int -> a:int -> unit
  = "caml_SDL_SetRenderDrawColor3"

external set_draw_blend_mode : t -> BlendMode.t -> unit
  = "caml_SDL_SetRenderDrawBlendMode"

external draw_point :
  t -> int * int -> unit
  = "caml_SDL_RenderDrawPoint"

external draw_point2 :
  t -> x:int -> y:int -> unit
  = "caml_SDL_RenderDrawPoint2"

external draw_points :
  t -> points:(int * int) array -> unit
  = "caml_SDL_RenderDrawPoints"

external draw_line :
  t -> ((int * int) * (int * int)) -> unit
  = "caml_SDL_RenderDrawLine"

external draw_line2 :
  t -> p1:(int * int) -> p2:(int * int) -> unit
  = "caml_SDL_RenderDrawLine2"

external draw_lines :
  t -> (int * int) array -> unit
  = "caml_SDL_RenderDrawLines"

external draw_rect :
  t -> Rect.t -> unit
  = "caml_SDL_RenderDrawRect"

external draw_rects :
  t -> Rect.t array -> unit
  = "caml_SDL_RenderDrawRects"

external fill_rect :
  t -> Rect.t -> unit
  = "caml_SDL_RenderFillRect"

external fill_rects :
  t -> Rect.t array -> unit
  = "caml_SDL_RenderFillRects"

external copy : t ->
  texture:Texture.t ->
  ?src_rect:Rect.t ->
  ?dst_rect:Rect.t -> unit -> unit
  = "caml_SDL_RenderCopy"

type renderer_flip =
  | Flip_None
  | Flip_Horizontal
  | Flip_Vertical

external copyEx : t ->
  texture:Texture.t ->
  ?src_rect:Rect.t ->
  ?dst_rect:Rect.t ->
  ?angle:float ->
  ?center:int * int ->
  ?flip:renderer_flip ->
  unit -> unit
  = "caml_SDL_RenderCopyEx_bc"
    "caml_SDL_RenderCopyEx"

external set_scale : t -> float * float -> unit
  = "caml_SDL_RenderSetScale"

external present : t -> unit
  = "caml_SDL_RenderPresent"

external clear : t -> unit
  = "caml_SDL_RenderClear"

type renderer_info = {
  name: string;
  max_texture_width: int;
  max_texture_height: int;
}

external get_render_drivers : unit -> renderer_info array
  = "caml_SDL_GetRenderDrivers"

external read_pixels : t -> ?rect:Rect.t -> Surface.t -> unit
  = "caml_SDL_RenderReadPixels"

external create_texture : t -> PixelFormat.t -> TextureAccess.t -> int -> int -> Texture.t = "caml_SDL_CreateTexture"

external set_target : t -> Texture.t option -> unit = "caml_SDL_SetRenderTarget"
