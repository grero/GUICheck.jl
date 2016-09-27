module GUICheck

function hasgui()
    username = split(readstring(`who am i`))[1]
    return hasgui(username)
end

function hasgui(username::AbstractString)
    s = readstring(`who`)
    return ismatch(Regex("$username[ \t]* console"),s)
end

end
