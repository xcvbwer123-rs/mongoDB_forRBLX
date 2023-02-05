export type resultHandlerType = {
    hasError: (self:resultHandlerType)->boolean|string;
    getResult: (self:resultHandlerType)->table;
    forEach: (self:resultHandlerType,func:(key:string,value:any)->nil)->nil;
    iterator: ()->();
    isArray: (self:resultHandlerType)->boolean;
    isNull: (self:resultHandlerType)->boolean;
}

export type requestHandlerType = {
    request: ()->resultHandlerType;
}

export type collection = {
    find: (self:collection,matchModel:table,options:table|nil)->resultHandlerType;
    findAll: (self:collection,matchModel:table,options:table|nil)->resultHandlerType;
    update: (self:collection,matchModel:table,updateModel:table)->resultHandlerType;
    delete: (self:collection,deleteModel:table)->resultHandlerType;
    insert: (self:collection,insertModel:table)->resultHandlerType;
}

export type shaString = string

export type mongodb = {
    new: ()->mongodb;
    getCollection: (collectionName)->collection;
    url: string;
    secret: shaString;
    debug: boolean|nil;
}

return {}
