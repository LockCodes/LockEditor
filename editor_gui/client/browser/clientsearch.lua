local sortedResultsCache = {}

function elementSearch(cachetable, query, results, foundCache)
	if not foundCache then
		foundCache = {}
	end
	query = string.lower(query)
	if results == nil then
		results = {}
	end

	local cacheKey = tostring(cachetable) .. "_" .. query

	if sortedResultsCache[cacheKey] then
		return sortedResultsCache[cacheKey]
	end

	for gindex, object in pairs(cachetable) do
		local model = tonumber(object["model"])
		if type(gindex) == "string" then
			results = elementSearch(object, query, results, foundCache)
		else
			if not foundCache[model] then
				local matches = false
				if query == "" then
					table.insert(results, object)
					foundCache[model] = true
					matches = true
				end

				if (string.find(string.lower(object["name"]), query)) and not matches then
					table.insert(results, object)
					foundCache[model] = true
					matches = true
				end
				if not matches then
					for keywordKey, keywordValue in pairs(object["keywords"]) do
						if matches then
							break
						end
						if string.find(string.lower(keywordValue), query) then
							table.insert(results, object)
							foundCache[model] = true
							matches = true
						end
					end
				end
				if not matches then
					if tonumber(query) then
						if string.find(tostring(model), query) then
							table.insert(results, object)
							foundCache[model] = true
						end
					end
				end
			end
		end
	end

	if tonumber(query) then
		local searchID = tonumber(query)
		if searchID >= 0 and searchID < 20000 and not foundCache[searchID] then
			table.insert(results, {
				["model"] = tostring(searchID),
				["name"] = "Custom Model",
				["keywords"] = {},
			})
			foundCache[searchID] = true
		end
	end

	if #results > 1 then
		table.sort(results, function(a, b)
			local modelA = tonumber(a["model"]) or 999999
			local modelB = tonumber(b["model"]) or 999999
			return modelA < modelB
		end)

		if tonumber(query) then
			local searchID = tonumber(query)
			for i = 1, math.min(#results, 100) do
				if tonumber(results[i]["model"]) == searchID then
					if i > 1 then
						local exactMatch = table.remove(results, i)
						table.insert(results, 1, exactMatch)
					end
					break
				end
			end
		end
	end

	if query == "" or tonumber(query) then
		sortedResultsCache[cacheKey] = results
	end

	return results
end

function cacheElements(node, elemtype)
	newcache = recursiveLookup(node, elemtype)
	return newcache
end

function recursiveLookup(node, elemtype, cache, parent)
	if cache == nil then
		cache = {}
	end
	for i, objectnode in ipairs(xmlNodeGetChildren(node)) do
		if xmlNodeGetName(objectnode) == elemtype then
			local model = xmlNodeGetAttribute(objectnode, "model")
			key = #cache + 1
			local name = xmlNodeGetAttribute(objectnode, "name")
			if (not name) and (elemtype == "vehicle") then
				name = getVehicleNameFromModel(tonumber(model))
			end
			cache[key] = {}
			cache[key]["model"] = model
			cache[key]["name"] = name
			cache[key]["parent"] = parent
			local keywordString = xmlNodeGetAttribute(objectnode, "keywords")
			local keywordTable = split(keywordString, 44)
			cache[key]["keywords"] = {}
			for index, keyword in pairs(keywordTable) do
				cache[key]["keywords"][index] = keyword
			end
		elseif xmlNodeGetName(objectnode) == "group" then
			local name = xmlNodeGetAttribute(objectnode, "name")
			cache[name] = recursiveLookup(objectnode, elemtype, {}, cache)
		end
	end
	return cache
end
