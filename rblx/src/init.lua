---@class mongodb
local mongodb = {}
mongodb.__index = mongodb

---@module collection
local collection = require(script.collection)
local sha1 = require(script.sha1)

function mongodb.new(options)
    return setmetatable({
        url=options.url;
        secret=sha1(options.secret);
        debug = options.debug;
    },mongodb)
end

---@return mongodbCollection
function mongodb:getCollection(collectionName)
    return collection.new(self,collectionName)
end

return mongodb
