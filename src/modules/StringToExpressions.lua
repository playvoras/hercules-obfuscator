local stringtoexpressionreall = {}

local math_methods = {
    add_sub = function(char)
        return (char % 2 == 0) and string.format("(%d + %d)", char - 5, 5) or string.format("(%d - %d)", char + 3, 3)
    end,
    mul_div = function(char)
        return (char % 2 == 0) and string.format("(%d * %d + %d)", math.floor(char / 2), 2, char % 2) or string.format("(%d * %d - %d)", math.ceil(char / 2), 2, 2 - char % 2)
    end,
    pow_mod = function(char)
        local base = math.ceil(math.sqrt(char))
        return string.format("(%d ^ 2 - %d)", base, base * base - char)
    end,
    wtf_add = function(char)
        return string.format("((%d + %d) + %d)", char - 4, 2, 2)
    end,
}

local function get_random_method()
    local keys = {}
    for key in pairs(math_methods) do
        table.insert(keys, key)
    end
    local random_key = keys[math.random(#keys)]
    return math_methods[random_key]
end

local function obfuscate_string_literal(str)
    local obfuscated = {}
    for i = 1, #str do
        local char = str:byte(i)
        local math_method = get_random_method()
        local part = math_method(char)
        table.insert(obfuscated, "string.char(" .. part .. ")")
    end
    return table.concat(obfuscated, " .. ")
end

function stringtoexpressionreall.process(script_content)
    return script_content:gsub("(['\"])(.-)%1", function(_, str)
        return obfuscate_string_literal(str)
    end)
end

return stringtoexpressionreall
