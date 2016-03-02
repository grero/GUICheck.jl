module GUICheck

function hasgui()
    username = split(readall(`who am i`))[1]
    return hasgui(username)
end

function hasgui(username::AbstractString)
    s = readall(`who`)
    return ismatch(Regex("$username[ \t]* console"),s)
end

end
