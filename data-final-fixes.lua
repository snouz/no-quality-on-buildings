local function tag_all_entity_with_health_prototypes()
    for entity_type, entities in pairs(data.raw) do
        if type(entities) == "table" then
            for entity_name, entity in pairs(entities) do
                if type(entity) == "table" and type(entity.max_health) == "number" then
                    entity.quality_indicator_scale = 0.01
                end
            end
        end
    end
end