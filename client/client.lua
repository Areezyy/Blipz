local blips = {

    {title="Weed Köpare", colour=72, id=140, x = -1111.04, y = -1498.5, z = 3.7},
    {title="Weed Plantage", colour=72, id=140, x = 512.45, y = -1950.39, z = 24.98},
    {title="Weed Paketering", colour=72, id=140, x = 444.63, y = -1575.79, z = 29.28},
}
Citizen.CreateThread(function()
 
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
