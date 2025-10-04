local descriptionsTable = {
  [1] = "Sleep well",
  [2] = "Good morning",
  [3] = "Good afternoon",
  [4] = "Good afternoon",
  [5] = "Good evening",
  [6] = "Good night",
}
local iconsTable = {
  [1] = " ",
  [2] = " ",
  [3] = " ",
  [4] = " ",
  [5] = " ",
  [6] = "󰖔 ",
}

local asciiTable = {
  [1] = "thisisfine",
  [2] = "gopher",
  [3] = "apple",
  [4] = "gopher_red",
  [5] = "unicorn",
  [6] = "thisisfine",
}

local function getHour()
  local tableTime = os.date "*t"
  return tableTime.hour
end

local function getIndex(hour)
  if hour == 23 or hour < 7 then
    return 1
  elseif hour < 12 then
    return 2
  elseif hour >= 12 and hour < 13 then
    return 3
  elseif hour >= 13 and hour < 18 then
    return 4
  elseif hour >= 18 and hour < 21 then
    return 5
  elseif hour >= 21 then
    return 6
  end
end

local D = {
  getArt = function() return asciiTable[getIndex(getHour())] end,
  getIcon = function() return iconsTable[getIndex(getHour())] end,
  getGreeting = function() return descriptionsTable[getIndex(getHour())] end,
}

return D
