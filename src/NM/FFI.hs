{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Foreign functions.

module NM.FFI where

import Foreign.C
import Foreign
import GLib

-- | A network manager client.
newtype Client = Client (Ptr Client)

foreign import ccall
  "libnm-glib.h nm_client_new"
  nm_client_new :: IO Client

foreign import ccall
  "libnm-glib.h nm_client_get_devices"
  nm_client_get_devices :: Client -> IO GPtrArray

foreign import ccall
  "libnm-glib.h nm_client_networking_get_enabled"
  nm_client_networking_get_enabled :: Client -> IO Bool

foreign import ccall
  "libnm-glib.h nm_client_networking_set_enabled"
  nm_client_networking_set_enabled :: Client -> Bool -> IO ()

foreign import ccall
  "libnm-glib.h nm_client_wireless_get_enabled"
  nm_client_wireless_get_enabled :: Client -> IO Bool

foreign import ccall
  "libnm-glib.h nm_client_wireless_set_enabled"
  nm_client_wireless_set_enabled :: Client -> Bool -> IO ()

foreign import ccall
  "libnm-glib.h nm_client_wireless_hardware_get_enabled"
  nm_client_wireless_hardware_get_enabled :: Client -> IO Bool

foreign import ccall
  "libnm-glib.h nm_client_get_manager_running"
  nm_client_get_manager_running :: Client -> IO Bool

foreign import ccall
  "libnm-glib.h nm_client_get_active_connections"
  nm_client_get_active_connections :: Client -> IO GPtrArray
