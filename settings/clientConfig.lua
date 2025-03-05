BridgeClientConfig = {}
BridgeClientConfig.DebugLevel        = 0            -- Debug level, 0 for none, 1 for some, 2 for all data
BridgeClientConfig.NotifySystem      = "ox"         -- [ ox | qb | esx | mythic | pNotify | t-notify | wasabi | lab | custom ]
BridgeClientConfig.ShowHelpText      = "ox"         -- [ ox | qb | jg | okok | cd | lab | custom ]
BridgeClientConfig.InputSystem       = "auto"       -- [ auto | ox | qb ]
BridgeClientConfig.MenuSystem        = "auto"       -- [ auto | ox_lib | qb-menu ]
BridgeClientConfig.ProgressBarSystem = "auto"       -- [ auto | ox | qb ]
BridgeClientConfig.ZoneSystem        = "ox"         -- [ ox | poly ]
BridgeClientConfig.VehicleKey        = "auto"       -- [ auto | qb-vehiclekeys | MrNewbVehicleKeys | wasabi | jaksam | qbx | cd | f_real | mk  | okok | qs | renewed | t1ger | mono ]
BridgeClientConfig.Fuel              = "auto"       -- [ LegacyFuel | ox_fuel | ps-fuel | qs-fuelstations | Renewed-Fuel | ti_fuel | lc_fuel | x-fuel | okokGasStation | BigDaddy | cdn | sna |  ] 
BridgeClientConfig.TargetSystem      = "ox"         -- [ ox | qb | sleepless | auto ] -- sleepless is only partially supported and would need another system in place

return BridgeClientConfig