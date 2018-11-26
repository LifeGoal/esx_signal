--###########################################################################--
--## MADE BY "Bazookan" AND "Viking" PLEASE DO NOT TAKE ANY CREDIT OF THIS!##--
--###########################################################################--
-------------------------------------------------------------------------------
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Signal'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
	'locales/sv.lua',
	'locales/en.lua',
	'config.lua'
}

client_scripts {
    '@es_extended/locale.lua',
	'locales/sv.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua'
}
