module NM where

import GLib
import NM.FFI

newClient :: IO Client
newClient = nm_client_new

getDevices :: Client -> IO [()]
getDevices client = do
  devices <- nm_client_get_devices client
  len <- g_ptr_array_size devices
  return (replicate (fromIntegral len) ())

networkingEnabled :: Client -> IO Bool
networkingEnabled = nm_client_networking_get_enabled

enableNetworking :: Client -> Bool -> IO ()
enableNetworking = nm_client_networking_set_enabled

wirelessEnabled :: Client -> IO Bool
wirelessEnabled = nm_client_wireless_get_enabled

enableWireless :: Client -> Bool -> IO ()
enableWireless = nm_client_wireless_set_enabled

wirelessHardwareEnabled :: Client -> IO Bool
wirelessHardwareEnabled = nm_client_wireless_hardware_get_enabled

managerRunning :: Client -> IO Bool
managerRunning = nm_client_get_manager_running

getActiveConnections :: Client -> IO [()]
getActiveConnections client = do
  devices <- nm_client_get_active_connections client
  len <- g_ptr_array_size devices
  return (replicate (fromIntegral len) ())
