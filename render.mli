(* OCamlSDL2 - An OCaml interface to the SDL2 library
 Copyright (C) 2013 Florent Monnier

 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.

 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*)
(** 2D rendering functions *)

(** API Doc:
  {{:http://wiki.libsdl.org/CategoryRender}Render category} *)

type t = Render_type.renderer

external create_window_and_renderer :
  width:int -> height:int ->
  flags:Window.window_flags list ->
  Window.t * t
  = "caml_SDL_CreateWindowAndRenderer"
(** {{:http://wiki.libsdl.org/SDL_CreateWindowAndRenderer}api doc} *)

(** {{:http://wiki.libsdl.org/SDL_RendererFlags}api doc} *)
type renderer_flags =
  | Software
  | Accelerated
  | PresentVSync
  | TargetTexture

val string_of_renderer_flags : renderer_flags -> string
val renderer_flags_of_string : string -> renderer_flags

external create_renderer :
  win:Window.t -> index:int ->
  flags:renderer_flags list -> t
  = "caml_SDL_CreateRenderer"
(** {{:http://wiki.libsdl.org/SDL_CreateRenderer}api doc} *)

external set_logical_size : t -> int * int -> unit
  = "caml_SDL_RenderSetLogicalSize"
(** {{:http://wiki.libsdl.org/SDL_RenderSetLogicalSize}api doc} *)

external set_logical_size2 : t -> width:int -> height:int -> unit
  = "caml_SDL_RenderSetLogicalSize2"
(** {{:http://wiki.libsdl.org/SDL_RenderSetLogicalSize}api doc} *)

external set_viewport :
  t -> Rect.t -> unit
  = "caml_SDL_RenderSetViewport"
(** {{:http://wiki.libsdl.org/SDL_RenderSetViewport}api doc} *)

external set_clip_rect :
  t -> Rect.t -> unit
  = "caml_SDL_RenderSetClipRect"
(** {{:https://wiki.libsdl.org/SDL_RenderSetClipRect}api doc} *)

external set_draw_color :
  t -> rgb:(int * int * int) -> a:int -> unit
  = "caml_SDL_SetRenderDrawColor"
(** {{:http://wiki.libsdl.org/SDL_SetRenderDrawColor}api doc} *)

external set_draw_color3 :
  t -> r:int -> g:int -> b:int -> a:int -> unit
  = "caml_SDL_SetRenderDrawColor3"
(** {{:http://wiki.libsdl.org/SDL_SetRenderDrawColor}api doc} *)

external set_draw_blend_mode : t -> BlendMode.t -> unit
  = "caml_SDL_SetRenderDrawBlendMode"
(** {{:http://wiki.libsdl.org/SDL_SetRenderDrawBlendMode}api doc} *)

external draw_point :
  t -> int * int -> unit
  = "caml_SDL_RenderDrawPoint"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawPoint}api doc} *)

external draw_point2 :
  t -> x:int -> y:int -> unit
  = "caml_SDL_RenderDrawPoint2"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawPoint}api doc} *)

external draw_points :
  t -> points:(int * int) array -> unit
  = "caml_SDL_RenderDrawPoints"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawPoints}api doc} *)

external draw_line :
  t -> ((int * int) * (int * int)) -> unit
  = "caml_SDL_RenderDrawLine"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawLine}api doc} *)

external draw_line2 :
  t -> p1:(int * int) -> p2:(int * int) -> unit
  = "caml_SDL_RenderDrawLine2"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawLine}api doc} *)

external draw_lines :
  t -> (int * int) array -> unit
  = "caml_SDL_RenderDrawLines"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawLines}api doc} *)

external draw_rect :
  t -> Rect.t -> unit
  = "caml_SDL_RenderDrawRect"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawRect}api doc} *)

external draw_rects :
  t -> Rect.t array -> unit
  = "caml_SDL_RenderDrawRects"
(** {{:http://wiki.libsdl.org/SDL_RenderDrawRects}api doc} *)

external fill_rect :
  t -> Rect.t -> unit
  = "caml_SDL_RenderFillRect"
(** {{:http://wiki.libsdl.org/SDL_RenderFillRect}api doc} *)

external fill_rects :
  t -> Rect.t array -> unit
  = "caml_SDL_RenderFillRects"
(** {{:http://wiki.libsdl.org/SDL_RenderFillRects}api doc} *)

external copy : t ->
  texture:Texture.t ->
  ?src_rect:Rect.t ->
  ?dst_rect:Rect.t -> unit -> unit
  = "caml_SDL_RenderCopy"
(** {{:http://wiki.libsdl.org/SDL_RenderCopy}api doc} *)

(** {{:http://wiki.libsdl.org/SDL_RendererFlip}api doc} *)
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
(** {{:http://wiki.libsdl.org/SDL_RenderCopyEx}api doc} *)

external set_scale : t -> float * float -> unit
  = "caml_SDL_RenderSetScale"
(** {{:http://wiki.libsdl.org/SDL_RenderSetScale}api doc} *)

external present : t -> unit
  = "caml_SDL_RenderPresent"
(** {{:http://wiki.libsdl.org/SDL_RenderPresent}api doc} *)

external clear : t -> unit
  = "caml_SDL_RenderClear"
(** {{:http://wiki.libsdl.org/SDL_RenderClear}api doc} *)

(** {{:http://wiki.libsdl.org/SDL_RendererInfo}api doc} *)
type renderer_info = {
  name: string;
  max_texture_width: int;
  max_texture_height: int;
}

external get_render_drivers : unit -> renderer_info array
  = "caml_SDL_GetRenderDrivers"
(** {{:http://wiki.libsdl.org/SDL_GetRenderDrivers}api doc} *)

external read_pixels : t -> ?rect:Rect.t -> Surface.t -> unit
  = "caml_SDL_RenderReadPixels"
(** {{:http://wiki.libsdl.org/SDL_RenderReadPixels}api doc} *)

external create_texture : t -> PixelFormat.t -> TextureAccess.t -> int -> int -> Texture.t
  = "caml_SDL_CreateTexture"

external destroy_texture : Texture.t -> unit = "caml_SDL_DestroyTexture"

external set_target : t -> Texture.t option -> unit
  = "caml_SDL_SetRenderTarget"

external get_output_size : t -> int * int
  = "caml_SDL_GetRendererOutputSize"
