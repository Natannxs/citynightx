function returnTime(time, bl)
    return bl and MilliSecondsToClock(time) or SecondsToClock(time)
end

function generateUuid()
    local uuid = ""
    TriggerEvent(
        "Citynight:generateUuid",
        function(localUuid)
            uuid = localUuid
            print(localUuid)
        end
    )

    return uuid
end
