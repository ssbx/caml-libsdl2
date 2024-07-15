module PixelFormat = struct
  type t =
    | Unknown
    | Index1LSB
    | Index1MSB
    | Index4LSB
    | Index4MSB
    | Index8
    | RGB332
    | RGB444
    | RGB555
    | BGR555
    | ARGB4444
    | RGBA4444
    | ABGR4444
    | BGRA4444
    | ARGB1555
    | RGBA5551
    | ABGR1555
    | BGRA5551
    | RGB565
    | BGR565
    | RGB24
    | BGR24
    | RGB888
    | RGBX8888
    | BGR888
    | BGRX8888
    | ARGB8888
    | RGBA8888
    | ABGR8888
    | BGRA8888
    | ARGB2101010
    | YV12
    | IYUV
    | YUY2
    | UYVY
    | YVYU


  let to_string = function
    | Unknown     -> "SDL_PIXELFORMAT_UNKNOWN"
    | Index1LSB   -> "SDL_PIXELFORMAT_INDEX1LSB"
    | Index1MSB   -> "SDL_PIXELFORMAT_INDEX1MSB"
    | Index4LSB   -> "SDL_PIXELFORMAT_INDEX4LSB"
    | Index4MSB   -> "SDL_PIXELFORMAT_INDEX4MSB"
    | Index8      -> "SDL_PIXELFORMAT_INDEX8"
    | RGB332      -> "SDL_PIXELFORMAT_RGB332"
    | RGB444      -> "SDL_PIXELFORMAT_RGB444"
    | RGB555      -> "SDL_PIXELFORMAT_RGB555"
    | BGR555      -> "SDL_PIXELFORMAT_BGR555"
    | ARGB4444    -> "SDL_PIXELFORMAT_ARGB4444"
    | RGBA4444    -> "SDL_PIXELFORMAT_RGBA4444"
    | ABGR4444    -> "SDL_PIXELFORMAT_ABGR4444"
    | BGRA4444    -> "SDL_PIXELFORMAT_BGRA4444"
    | ARGB1555    -> "SDL_PIXELFORMAT_ARGB1555"
    | RGBA5551    -> "SDL_PIXELFORMAT_RGBA5551"
    | ABGR1555    -> "SDL_PIXELFORMAT_ABGR1555"
    | BGRA5551    -> "SDL_PIXELFORMAT_BGRA5551"
    | RGB565      -> "SDL_PIXELFORMAT_RGB565"
    | BGR565      -> "SDL_PIXELFORMAT_BGR565"
    | RGB24       -> "SDL_PIXELFORMAT_RGB24"
    | BGR24       -> "SDL_PIXELFORMAT_BGR24"
    | RGB888      -> "SDL_PIXELFORMAT_RGB888"
    | RGBX8888    -> "SDL_PIXELFORMAT_RGBX8888"
    | BGR888      -> "SDL_PIXELFORMAT_BGR888"
    | BGRX8888    -> "SDL_PIXELFORMAT_BGRX8888"
    | ARGB8888    -> "SDL_PIXELFORMAT_ARGB8888"
    | RGBA8888    -> "SDL_PIXELFORMAT_RGBA8888"
    | ABGR8888    -> "SDL_PIXELFORMAT_ABGR8888"
    | BGRA8888    -> "SDL_PIXELFORMAT_BGRA8888"
    | ARGB2101010 -> "SDL_PIXELFORMAT_ARGB2101010"
    | YV12        -> "SDL_PIXELFORMAT_YV12"
    | IYUV        -> "SDL_PIXELFORMAT_IYUV"
    | YUY2        -> "SDL_PIXELFORMAT_YUY2"
    | UYVY        -> "SDL_PIXELFORMAT_UYVY"
    | YVYU        -> "SDL_PIXELFORMAT_YVYU"


  let of_string s =
    match String.uppercase_ascii s with
    | "SDL_PIXELFORMAT_UNKNOWN"     -> Unknown
    | "SDL_PIXELFORMAT_INDEX1LSB"   -> Index1LSB
    | "SDL_PIXELFORMAT_INDEX1MSB"   -> Index1MSB
    | "SDL_PIXELFORMAT_INDEX4LSB"   -> Index4LSB
    | "SDL_PIXELFORMAT_INDEX4MSB"   -> Index4MSB
    | "SDL_PIXELFORMAT_INDEX8"      -> Index8
    | "SDL_PIXELFORMAT_RGB332"      -> RGB332
    | "SDL_PIXELFORMAT_RGB444"      -> RGB444
    | "SDL_PIXELFORMAT_RGB555"      -> RGB555
    | "SDL_PIXELFORMAT_BGR555"      -> BGR555
    | "SDL_PIXELFORMAT_ARGB4444"    -> ARGB4444
    | "SDL_PIXELFORMAT_RGBA4444"    -> RGBA4444
    | "SDL_PIXELFORMAT_ABGR4444"    -> ABGR4444
    | "SDL_PIXELFORMAT_BGRA4444"    -> BGRA4444
    | "SDL_PIXELFORMAT_ARGB1555"    -> ARGB1555
    | "SDL_PIXELFORMAT_RGBA5551"    -> RGBA5551
    | "SDL_PIXELFORMAT_ABGR1555"    -> ABGR1555
    | "SDL_PIXELFORMAT_BGRA5551"    -> BGRA5551
    | "SDL_PIXELFORMAT_RGB565"      -> RGB565
    | "SDL_PIXELFORMAT_BGR565"      -> BGR565
    | "SDL_PIXELFORMAT_RGB24"       -> RGB24
    | "SDL_PIXELFORMAT_BGR24"       -> BGR24
    | "SDL_PIXELFORMAT_RGB888"      -> RGB888
    | "SDL_PIXELFORMAT_RGBX8888"    -> RGBX8888
    | "SDL_PIXELFORMAT_BGR888"      -> BGR888
    | "SDL_PIXELFORMAT_BGRX8888"    -> BGRX8888
    | "SDL_PIXELFORMAT_ARGB8888"    -> ARGB8888
    | "SDL_PIXELFORMAT_RGBA8888"    -> RGBA8888
    | "SDL_PIXELFORMAT_ABGR8888"    -> ABGR8888
    | "SDL_PIXELFORMAT_BGRA8888"    -> BGRA8888
    | "SDL_PIXELFORMAT_ARGB2101010" -> ARGB2101010
    | "SDL_PIXELFORMAT_YV12"        -> YV12
    | "SDL_PIXELFORMAT_IYUV"        -> IYUV
    | "SDL_PIXELFORMAT_YUY2"        -> YUY2
    | "SDL_PIXELFORMAT_UYVY"        -> UYVY
    | "SDL_PIXELFORMAT_YVYU"        -> YVYU

    | "PIXELFORMAT_UNKNOWN"     -> Unknown
    | "PIXELFORMAT_INDEX1LSB"   -> Index1LSB
    | "PIXELFORMAT_INDEX1MSB"   -> Index1MSB
    | "PIXELFORMAT_INDEX4LSB"   -> Index4LSB
    | "PIXELFORMAT_INDEX4MSB"   -> Index4MSB
    | "PIXELFORMAT_INDEX8"      -> Index8
    | "PIXELFORMAT_RGB332"      -> RGB332
    | "PIXELFORMAT_RGB444"      -> RGB444
    | "PIXELFORMAT_RGB555"      -> RGB555
    | "PIXELFORMAT_BGR555"      -> BGR555
    | "PIXELFORMAT_ARGB4444"    -> ARGB4444
    | "PIXELFORMAT_RGBA4444"    -> RGBA4444
    | "PIXELFORMAT_ABGR4444"    -> ABGR4444
    | "PIXELFORMAT_BGRA4444"    -> BGRA4444
    | "PIXELFORMAT_ARGB1555"    -> ARGB1555
    | "PIXELFORMAT_RGBA5551"    -> RGBA5551
    | "PIXELFORMAT_ABGR1555"    -> ABGR1555
    | "PIXELFORMAT_BGRA5551"    -> BGRA5551
    | "PIXELFORMAT_RGB565"      -> RGB565
    | "PIXELFORMAT_BGR565"      -> BGR565
    | "PIXELFORMAT_RGB24"       -> RGB24
    | "PIXELFORMAT_BGR24"       -> BGR24
    | "PIXELFORMAT_RGB888"      -> RGB888
    | "PIXELFORMAT_RGBX8888"    -> RGBX8888
    | "PIXELFORMAT_BGR888"      -> BGR888
    | "PIXELFORMAT_BGRX8888"    -> BGRX8888
    | "PIXELFORMAT_ARGB8888"    -> ARGB8888
    | "PIXELFORMAT_RGBA8888"    -> RGBA8888
    | "PIXELFORMAT_ABGR8888"    -> ABGR8888
    | "PIXELFORMAT_BGRA8888"    -> BGRA8888
    | "PIXELFORMAT_ARGB2101010" -> ARGB2101010
    | "PIXELFORMAT_YV12"        -> YV12
    | "PIXELFORMAT_IYUV"        -> IYUV
    | "PIXELFORMAT_YUY2"        -> YUY2
    | "PIXELFORMAT_UYVY"        -> UYVY
    | "PIXELFORMAT_YVYU"        -> YVYU

    | "UNKNOWN"     -> Unknown
    | "INDEX1LSB"   -> Index1LSB
    | "INDEX1MSB"   -> Index1MSB
    | "INDEX4LSB"   -> Index4LSB
    | "INDEX4MSB"   -> Index4MSB
    | "INDEX8"      -> Index8
    | "RGB332"      -> RGB332
    | "RGB444"      -> RGB444
    | "RGB555"      -> RGB555
    | "BGR555"      -> BGR555
    | "ARGB4444"    -> ARGB4444
    | "RGBA4444"    -> RGBA4444
    | "ABGR4444"    -> ABGR4444
    | "BGRA4444"    -> BGRA4444
    | "ARGB1555"    -> ARGB1555
    | "RGBA5551"    -> RGBA5551
    | "ABGR1555"    -> ABGR1555
    | "BGRA5551"    -> BGRA5551
    | "RGB565"      -> RGB565
    | "BGR565"      -> BGR565
    | "RGB24"       -> RGB24
    | "BGR24"       -> BGR24
    | "RGB888"      -> RGB888
    | "RGBX8888"    -> RGBX8888
    | "BGR888"      -> BGR888
    | "BGRX8888"    -> BGRX8888
    | "ARGB8888"    -> ARGB8888
    | "RGBA8888"    -> RGBA8888
    | "ABGR8888"    -> ABGR8888
    | "BGRA8888"    -> BGRA8888
    | "ARGB2101010" -> ARGB2101010
    | "YV12"        -> YV12
    | "IYUV"        -> IYUV
    | "YUY2"        -> YUY2
    | "UYVY"        -> UYVY
    | "YVYU"        -> YVYU

    | _ -> invalid_arg "SdlpixelFormat.of_string"

  type allocated
end

external get_pixel_format_name : PixelFormat.t -> string
  = "caml_SDL_GetPixelFormatName"

external alloc_format : PixelFormat.t -> PixelFormat.allocated
  = "caml_SDL_AllocFormat"

external free_format : PixelFormat.allocated -> unit
  = "caml_SDL_FreeFormat"

type uint8 = int

type rgb = uint8 * uint8 * uint8
type rgba = uint8 * uint8 * uint8 * uint8

external map_RGB :
  PixelFormat.allocated -> rgb:rgb -> int32
  = "caml_SDL_MapRGB"

external map_RGBA :
  PixelFormat.allocated -> rgba:rgba -> int32
  = "caml_SDL_MapRGBA"

external get_RGB : pixel:int32 -> fmt:PixelFormat.allocated -> rgb
  = "caml_SDL_GetRGB"

external get_RGBA : pixel:int32 -> fmt:PixelFormat.allocated -> rgba
  = "caml_SDL_GetRGBA"
