---@type PlanetPrototypeData
return {
    native_life = {
        ['saps'] = true,
        ['fish'] = true,
        ['zipir1'] = true,
        ['tree-mk01'] = true,
        ['seaweed'] = true
    },
    noise_layers = {
        moisture = {zoom = 1300},
        moisture_octave_1 = {zoom = 256},
        moisture_octave_2 = {zoom = 32},
        rocks = {zoom = 100},
        rocks_2 = {zoom = 15},
        sap_tree = {zoom = 32},
        sap_tree_2 = {zoom = 16},
        shrub = {zoom = 32},
        shrub_2 = {zoom = 32},
        brown_asterisk = {zoom = 100},
        brown_asterisk_2 = {zoom = 16},
    },
    sprites = {10, 256, 256},
    tags = {
        ['tidal'] = true,
        ['arable'] = true,
        ['cavernous'] = {chance = 0.5},
        ['temprate'] = {chance = 0.5},
        ['ringed'] = {chance = 0.1, min_value = 1, max_value = 2},
    },
    type = 'ocean',
    possible_names = {
        'Abyssia',
        'Abyssix',
        'Amphitrite',
        'Aquamarine',
        'Aquarion',
        'Aquarius',
        'Aquatalia',
        'Aquilo',
        'Atlantis',
        'Marine',
        'Marinia',
        'Marinix',
        'Marinus',
        'Nautia',
        'Nereid',
        'Nereus',
        'Oceanara',
        'Oceanus',
        'Pacifica',
        'Poseidon',
        'Seafarer',
        'Thalassa',
        'Thetis',
        'Tidalia',
        'Tidion',
        'Triton',
        'Serenity',
        'Sphere',
    },
    spawn_conditions = {
        moon = true,
        planet = true,
        star = false,
        asteroid = false
    },
    cliff_thresholds = {0.07, 0.11, 0.15, 0.2, 0.24, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9},
    connected_surfaces = {
		orbit_surface = 'space',
		underwater_surface = 'trench',
		underground_surface = nil,
	},
	gui_builder = 'planet',
}