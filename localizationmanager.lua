Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInitSingleDayHeists", function(loc)
  loc:add_localized_strings({
    ["heist_watchdogs_1_night_hl"] = "Truck Load Night",
    ["heist_watchdogs_2_day_hl"] = "Boat Load Day",
    ["heist_welcome_to_the_jungle_1_n_hl"] = "Club House Night",
    ["heist_contact_single_days"] = "Single Days",
    ["heist_contact_single_days_description"] = "",
  })
end)
