data:extend {{
    type = "item",
    name = "maraxsis-electricity",
    icon = "__maraxsis__/graphics/icons/electricity.png",
    icon_size = 40,
    hidden = true,
    stack_size = 100,
    spoil_to_trigger_result = {
        trigger = {
            type = 'direct',
            action_delivery = {
                type = 'instant',
                source_effects = {
                    type = 'script',
                    effect_id = 'maraxsis-salt-reactor-energy-created'
                }
            }
        },
        items_per_trigger = 1,
    },
    flags = {"only-in-cursor", "ignore-spoil-time-modifier"},
    spoil_ticks = (0.5 * 60) * 1.35 + 10, -- items start to spoil when the recipe starts.
}}

data:extend {{
    type = "furnace",
    name = "maraxsis-salt-reactor",
    icon = "__maraxsis__/graphics/icons/salt-reactor.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation", "no-automated-item-removal"},
    minable = {mining_time = 1, result = "maraxsis-salt-reactor"},
    max_health = 1000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
        {
            type = "fire",
            percent = 80
        }
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    module_slots = 6,
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    allowed_module_categories = {"efficiency", "quality"},
    effect_receiver = {
        uses_module_effects = true,
        uses_beacon_effects = false,
        uses_surface_effects = false,
    },
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__maraxsis__/graphics/entity/salt-reactor/salt-reactor.png",
                    priority = "high",
                    width = 400,
                    height = 400,
                    frame_count = 1,
                    scale = 0.5,
                    shift = {0, -0.2},
                },
                {
                    filename = "__maraxsis__/graphics/entity/salt-reactor/salt-reactor-sh.png",
                    priority = "high",
                    width = 800,
                    height = 600,
                    scale = 0.5,
                    frame_count = 1,
                    shift = {0, -0.2},
                    draw_as_shadow = true,
                },
            }
        },
    },
    energy_source = {
        type = "burner",
        fuel_categories = {"nuclear"},
        effectivity = 1,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
    },
    energy_usage = "80MW",
    source_inventory_size = 1,
    result_inventory_size = 1,
    crafting_speed = 1,
    crafting_categories = {"maraxsis-salt-reactor"},
}}

data:extend {{
    type = "recipe-category",
    name = "maraxsis-salt-reactor"
}}

data:extend {{
    type = "recipe",
    name = "maraxsis-salt-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "maraxsis-glass-panes", amount = 50},
        {type = "item", name = "tungsten-plate", amount = 100},
        {type = "item", name = "processing-unit", amount = 100},
        {type = "item", name = "nuclear-reactor", amount = 1},
    },
    results = {
        {type = "item", name = "maraxsis-salt-reactor", amount = 1},
    },
    category = "maraxsis-hydro-plant",
}}

data:extend {{
    type = "item",
    name = "maraxsis-salt-reactor",
    icon = "__maraxsis__/graphics/icons/salt-reactor.png",
    icon_size = 64,
    place_result = "maraxsis-salt-reactor",
    stack_size = 10,
}}

data:extend {{
    type = "technology",
    name = "maraxsis-salt-reactor",
    icon = "__maraxsis__/graphics/technology/salt-reactor.png",
    icon_size = 256,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "maraxsis-salt-reactor"
        },
        {
            type = "unlock-recipe",
            recipe = "maraxsis-electricity"
        }
    },
    prerequisites = {"nuclear-power", "maraxsis-glassworking"},
    research_trigger = {
        type = "craft-item",
        item = "maraxsis-salt",
        count = 100
    },
    order = "d-e",
}}

data:extend {{
    type = "recipe",
    name = "maraxsis-electricity",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "maraxsis-salt", amount = 1},
    },
    results = {
        {type = "item", name = "maraxsis-electricity", amount = 1},
    },
    category = "maraxsis-salt-reactor",
    auto_recycle = false,
    allow_decomposition = false,
}}

data:extend {{
    type = "electric-energy-interface",
    name = "maraxsis-salt-reactor-energy-interface",
    icon = "__maraxsis__/graphics/icons/salt-reactor.png",
    icon_size = 64,
    localised_name = {"entity-name.maraxsis-salt-reactor"},
    localised_description = {"entity-description.maraxsis-salt-reactor"},
    gui_mode = "none",
    quality_indicator_scale = 0,
    flags = {},
    selectable_in_game = false,
    hidden = true,
    collision_mask = {layers = {}},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
        output_flow_limit = "350MW",
        render_no_power_icon = false
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
}}