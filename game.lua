local nk = require("nakama")

local version_query = [[select version();]]

local result = nk.sql_exec(version_query)

nk.logger_info("Got version: %q", result)

local extensions_query = [[select pg_available_extensions();]]

local ext_result = nk.sql_exec(extensions_query)

nk.logger_info("Got extensions: %q", ext_result)
