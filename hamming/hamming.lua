local Hamming = {}

function Hamming.compute(a,b)
    if string.len(a) ~= string.len(b) then
        return -1
    end
    a = string.lower(a)
    b = string.lower(b)

    local counter = 0
    for i = 1, string.len(a) do
        if string.sub(a,i,i) ~= string.sub(b,i,i) then
            counter = counter + 1
        end
    end

    return counter
end

return Hamming
