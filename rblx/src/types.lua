type jsonArray = {[number]:jsonData|jsonArray|string|number|boolean}
type jsonObject = {[string]:jsonData|jsonArray|string|number|boolean}
type jsonData = jsonArray|jsonObject

export type resultHandlerType = {
    hasError: (self:resultHandlerType)->boolean|string;
    getResult: (self:resultHandlerType)->jsonData;
    forEach: (self:resultHandlerType,func:(key:string,value:any)->nil)->nil;
    iterator: ()->();
    isArray: (self:resultHandlerType)->boolean;
    isNull: (self:resultHandlerType)->boolean;
}

export type requestHandlerType = {
    request: ()->resultHandlerType;
}

export type collection = {
    find: (self:collection,matchModel:jsonData,options:jsonData|nil)->resultHandlerType;
    findAll: (self:collection,matchModel:jsonData,options:jsonData|nil)->resultHandlerType;
    update: (self:collection,matchModel:jsonData,updateModel:jsonData)->resultHandlerType;
    delete: (self:collection,deleteModel:jsonData)->resultHandlerType;
    insert: (self:collection,insertModel:jsonData)->resultHandlerType;
}

export type shaString = string

export type mongodb = {
    new: ()->mongodb;
    getCollection: (collectionName: string)->collection;
    url: string;
    secret: shaString;
    debug: boolean|nil;
}

return {}
