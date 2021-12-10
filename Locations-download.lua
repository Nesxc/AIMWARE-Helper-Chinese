gui.Reference("MENU"):SetActive(true)

local Paths = {
    'de_vertigo_rage',
    'de_vertigo_legit',
    'de_train_legit',
    'de_overpass_legit',
    'de_nuke_legit',
    'de_mirage_rage',
    'de_mirage_legit',
    'de_inferno_rage',
    'de_inferno_legit',
    'de_dust2_rage',
    'de_dust2_legit',
    'de_cbble_rage',
    'de_cbble_legit',
    'de_vertigo_legit',
    'de_cache_legit',
    'cs_office_rage',
    'readme.txt',
}

local function Download(path)
    http.Get('https://cdn.jsdelivr.net/gh/Nesxc/AIMWARE-Helper-Chinese@main/helper/' .. path, function(data)
        file.Write('Helper-Locations/' .. path, data);
    end)
end

for k, v in pairs(Paths) do
    Download(v);
end