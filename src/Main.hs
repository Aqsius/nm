module Main where

import NM

main = do
  client <- newClient
  devices <- getDevices client
  putStrLn ("There are " ++ show (length devices) ++ " devices.")
  enabled <- networkingEnabled client
  putStrLn ("Networking is" ++ (if enabled then " " else " not ") ++ "enabled.")
  enabled <- wirelessEnabled client
  putStrLn ("Wireless is" ++ (if enabled then " " else " not ") ++ "enabled.")
  enabled <- wirelessHardwareEnabled client
  putStrLn ("Wireless hardware is" ++ (if enabled then " " else " not ") ++ "enabled.")
  running <- managerRunning client
  putStrLn ("The manager is" ++ (if enabled then " " else " not ") ++ "running.")
  connections <- getDevices client
  putStrLn ("There are " ++ show (length connections) ++ " active connections.")
  return ()
