local MAKITA_TRIGGER = 10

local switch_on = false

local function update()

    if switch_on then
        -- Trigger
        SRV_Channels:set_output_pwm_chan_timeout(MAKITA_TRIGGER, 1900, 5)
        switch_on = true
    else
        -- Un-Trigger
        SRV_Channels:set_output_pwm_chan_timeout(MAKITA_TRIGGER, 1300, 5)
        switch_on = false
    end

    return update, 40000
 end
 return update, 1000
