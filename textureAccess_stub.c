/* OCamlSDL2 - An OCaml interface to the SDL2 library
 Copyright (C) 2013 Florent Monnier

 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.

 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*/
#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/alloc.h>
#include <caml/fail.h>

#include <SDL.h>
#include <SDL_render.h>

const Uint32 caml_sdl_textureaccess_table[] = {
    SDL_TEXTUREACCESS_STATIC,
    SDL_TEXTUREACCESS_STREAMING,
    SDL_TEXTUREACCESS_TARGET
};

value
Val_Sdl_textureaccess_t(int texture_access)
{
    switch (texture_access) {
    case SDL_TEXTUREACCESS_STATIC:    return Val_int(0);
    case SDL_TEXTUREACCESS_STREAMING: return Val_int(1);
    case SDL_TEXTUREACCESS_TARGET:    return Val_int(2);
    }
    caml_failwith("SdlTextureAccess.t");
}

/* vim: set ts=4 sw=4 et: */
