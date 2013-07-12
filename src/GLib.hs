{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Support for GLib data types.

module GLib where

import Foreign.C
import Foreign

newtype GPtrArray = GPtrArray (Ptr GPtrArray)

foreign import ccall
  "glib-helpers.h g_ptr_array_size"
  g_ptr_array_size :: GPtrArray -> IO CUInt
