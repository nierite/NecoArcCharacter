NECOARC = require("__CharacterModHelper__.common")("NecoArc")
NECOARC.is_debug = false
local charname = "NecoArc-skin"

-- Setup new animations, etc
local ICONPATH = "__NecoArcCharacter__/graphics/icons/"
local SR_IMGPATH = "__NecoArcCharacter__/graphics/SR/"

-- common sprite sizes
local normal_size = 128
local normal_scale = normal_scale
local larger_size = 192
local shadow_off = -8.0


local characternecoarc_animations = {
    water_reflection = {
        pictures = {
            filename = SR_IMGPATH .. "character-reflection.png",
            priority = "extra-high",
            width = 13,
            height = 19,
            shift = util.by_pixel(0, 67),
            scale = 5,
            variation_count = 1,
        },
        rotate = false,
        orientation_to_variation = false
    },
    level1 = {
        dead = {
            filename = SR_IMGPATH .. "level1_dead.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(-7.0, -5.5),
            frame_count = 2,
            scale = normal_scale,
        },
        dead_mask = {
            filename = SR_IMGPATH .. "level1_dead_mask.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(-7.0, -5.5),
            frame_count = 2,
            apply_runtime_tint = true,
            scale = normal_scale,
        },
        dead_shadow = {
            filename = SR_IMGPATH .. "level1_dead_shadow.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(-7.0, -5.5 - 1.0),
            frame_count = 2,
            draw_as_shadow = true,
            scale = normal_scale,
        },
        idle = {
            filename = SR_IMGPATH .. "level1_idle.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            scale = normal_scale,
        },
        idle_mask = {
            filename = SR_IMGPATH .. "level1_idle_mask.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            apply_runtime_tint = true,
            scale = normal_scale,
        },
        idle_shadow = {
            filename = SR_IMGPATH .. "level1_idle_shadow.png",
            width = larger_size,
            height = larger_size,
            shift = util.by_pixel(0.0, -18.0 + shadow_off),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            draw_as_shadow = true,
            scale = normal_scale,
        },
        idle_gun = {
            filename = SR_IMGPATH .. "level1_idle_gun.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            scale = normal_scale
        },
        idle_gun_mask = {
            filename = SR_IMGPATH .. "level1_idle_gun_mask.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            apply_runtime_tint = true,
            scale = normal_scale
        },
        idle_gun_shadow = {
            filename = SR_IMGPATH .. "level1_idle_gun_shadow.png",
            width = larger_size,
            height = larger_size,
            shift = util.by_pixel(0.0, -18.0 + shadow_off),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            draw_as_shadow = true,
            scale = normal_scale
        },
        mining_tool = {
            filename = SR_IMGPATH .. "level1_mining_tool.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.9,
            scale = normal_scale
        },
        mining_tool_mask = {
            filename = SR_IMGPATH .. "level1_mining_tool_mask.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.9,
            apply_runtime_tint = true,
            scale = normal_scale
        },
        mining_tool_shadow = {
            filename = SR_IMGPATH .. "level1_mining_tool_shadow.png",
            width = larger_size,
            height = larger_size,
            shift = util.by_pixel(0.0, -18.0 + shadow_off),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.9,
            draw_as_shadow = true,
            scale = normal_scale
        },
        running = {
            filename = SR_IMGPATH .. "level1_running.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.6,
            scale = normal_scale,
        },
        running_mask = {
            filename = SR_IMGPATH .. "level1_running_mask.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.6,
            apply_runtime_tint = true,
            scale = normal_scale,
        },
        running_shadow = {
            filename = SR_IMGPATH .. "level1_running_shadow.png",
            width = larger_size,
            height = larger_size,
            shift = util.by_pixel(0.0, -18.0 + shadow_off),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = normal_scale,
        },
        running_gun = {
            filename = SR_IMGPATH .. "level1_running_gun.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(2.5, -18.0),
            frame_count = 24,
            direction_count = 18,
            animation_speed = 0.6,
            scale = normal_scale,
        },
        running_gun_mask = {
            filename = SR_IMGPATH .. "level1_running_gun_mask.png",
            width = normal_size,
            height = normal_size,
            shift = util.by_pixel(2.5, -18.0),
            frame_count = 24,
            direction_count = 18,
            animation_speed = 0.6,
            apply_runtime_tint = true,
            scale = normal_scale,
        },
        running_gun_shadow = {
            filename = SR_IMGPATH .. "level1_running_gun_shadow.png",
            width = larger_size,
            height = larger_size,
            shift = util.by_pixel(2.5, -18.0 + shadow_off),
            frame_count = 24,
            direction_count = 18,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = normal_scale,
        },
        running_gun_shadow_flipped = {
            filename = SR_IMGPATH .. "level1_running_gun_shadow_flipped.png",
            width = larger_size,
            height = larger_size,
            shift = util.by_pixel(2.5, -18.0 + shadow_off),
            frame_count = 24,
            direction_count = 18,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = normal_scale,
        }
    },
}



-- Initialize prototypes for character and character-corpse
NECOARC = {}
NECOARC.character = { name = charname }
NECOARC.corpse = { name = charname .. "-corpse" }

-- Character
NECOARC.character.localised_name = { "entity-name." .. charname }
NECOARC.character.localised_description = { "entity-description." .. charname }
NECOARC.character.icons = {
    {
        icon = ICONPATH .. "character.png",
        icon_size = 64,
        icon_mipmaps = 4,
    }
}
NECOARC.character.character_corpse = NECOARC.corpse.name
NECOARC.character.fast_replaceable_group = "character"

-- armors removed for now
-- local armors_t3 = {"power-armor", "power-armor-mk2"}
-- if mods["space-age"] then
-- 	table.insert(armors_t3, "mech-armor")
-- end
-- local armors_t2 = {"heavy-armor", "modular-armor"}


NECOARC.character.animations = {
    {
        idle = {
            layers = {
                characternecoarc_animations.level1.idle,
                characternecoarc_animations.level1.idle_mask,
                characternecoarc_animations.level1.idle_shadow
            }
        },
        idle_with_gun = {
            layers = {
                characternecoarc_animations.level1.idle_gun,
                characternecoarc_animations.level1.idle_gun_mask,
                characternecoarc_animations.level1.idle_gun_shadow
            }
        },
        mining_with_tool = {
            layers = {
                characternecoarc_animations.level1.mining_tool,
                characternecoarc_animations.level1.mining_tool_mask,
                characternecoarc_animations.level1.mining_tool_shadow
            }
        },
        running_with_gun = {
            layers = {
                characternecoarc_animations.level1.running_gun,
                characternecoarc_animations.level1.running_gun_mask,
                characternecoarc_animations.level1.running_gun_shadow
            }
        },
        flipped_shadow_running_with_gun = {
            layers = {
                characternecoarc_animations.level1.running_gun_shadow_flipped
            }
        },
        running = {
            layers = {
                characternecoarc_animations.level1.running,
                characternecoarc_animations.level1.running_mask,
                characternecoarc_animations.level1.running_shadow
            }
        }
    },
    -- {
    --     armors = armors_t2,
    --     idle = {
    --         layers = {
    --             characternecoarc_animations.level2addon.idle,
    --             characternecoarc_animations.level2addon.idle_mask,
    --             characternecoarc_animations.level1.idle_shadow
    --         }
    --     },
    --     idle_with_gun = {
    --         layers = {
    --             characternecoarc_animations.level2addon.idle_gun,
    --             characternecoarc_animations.level2addon.idle_gun_mask,
    --             characternecoarc_animations.level1.idle_gun_shadow
    --         }
    --     },
    --     mining_with_tool = {
    --         layers = {
    --             characternecoarc_animations.level2addon.mining_tool,
    --             characternecoarc_animations.level2addon.mining_tool_mask,
    --             characternecoarc_animations.level1.mining_tool_shadow
    --         }
    --     },
    --     running_with_gun = {
    --         layers = {
    --             characternecoarc_animations.level2addon.running_gun,
    --             characternecoarc_animations.level2addon.running_gun_mask,
    --             characternecoarc_animations.level1.running_gun_shadow
    --         }
    --     },
    --     flipped_shadow_running_with_gun = {
    --         layers = {
    --             characternecoarc_animations.level1.running_gun_shadow
    --         }
    --     },
    --     running = {
    --         layers = {
    --             characternecoarc_animations.level2addon.running,
    --             characternecoarc_animations.level2addon.running_mask,
    --             characternecoarc_animations.level1.running_shadow
    --         }
    --     }
    -- },
    -- {
    --     armors = armors_t3,
    --     idle = {
    --         layers = {
    --             characternecoarc_animations.level3addon.idle,
    --             characternecoarc_animations.level3addon.idle_mask,
    --             characternecoarc_animations.level1.idle_shadow
    --         }
    --     },
    --     idle_with_gun = {
    --         layers = {
    --             characternecoarc_animations.level3addon.idle_gun,
    --             characternecoarc_animations.level3addon.idle_gun_mask,
    --             characternecoarc_animations.level1.idle_gun_shadow
    --         }
    --     },
    --     mining_with_tool = {
    --         layers = {
    --             characternecoarc_animations.level3addon.mining_tool,
    --             characternecoarc_animations.level3addon.mining_tool_mask,
    --             characternecoarc_animations.level1.mining_tool_shadow
    --         }
    --     },
    --     running_with_gun = {
    --         layers = {
    --             characternecoarc_animations.level3addon.running_gun,
    --             characternecoarc_animations.level3addon.running_gun_mask,
    --             characternecoarc_animations.level1.running_gun_shadow
    --         }
    --     },
    --     flipped_shadow_running_with_gun = {
    --         layers = {
    --             characternecoarc_animations.level1.running_gun_shadow
    --         }
    --     },
    --     running = {
    --         layers = {
    --             characternecoarc_animations.level3addon.running,
    --             characternecoarc_animations.level3addon.running_mask,
    --             characternecoarc_animations.level1.running_shadow
    --         }
    --     }
    -- }
}
NECOARC.character.water_reflection = characternecoarc_animations.water_reflection

-- Character corpse
NECOARC.corpse.name = charname .. "-corpse"
NECOARC.corpse.localised_name = { "entity-name." .. NECOARC.corpse.name }
NECOARC.corpse.icons = {
    {
        icon = ICONPATH .. "character.png",
        icon_mipmaps = 4,
        icon_size = 64,
    },
}
NECOARC.corpse.pictures = {
    {
        layers = {
            characternecoarc_animations.level1.dead,
            characternecoarc_animations.level1.dead_mask,
            characternecoarc_animations.level1.dead_shadow
        }
    },
    {
        layers = {
            characternecoarc_animations.level1.dead,
            characternecoarc_animations.level1.dead_mask,
            characternecoarc_animations.level1.dead_shadow
        }
    },
    {
        layers = {
            characternecoarc_animations.level1.dead,
            characternecoarc_animations.level1.dead_mask,
            characternecoarc_animations.level1.dead_shadow
        }
    },
    {
        layers = {
            characternecoarc_animations.level1.dead,
            characternecoarc_animations.level1.dead_mask,
            characternecoarc_animations.level1.dead_shadow
        }
    },
    -- {
    --     layers = {
    --         characternecoarc_animations.level2addon.dead,
    --         characternecoarc_animations.level2addon.dead_mask,
    --         characternecoarc_animations.level1.dead_shadow
    --     }
    -- },
    -- {
    --     layers = {
    --         characternecoarc_animations.level3addon.dead,
    --         characternecoarc_animations.level3addon.dead_mask,
    --         characternecoarc_animations.level1.dead_shadow
    --     }
    -- },
    -- {
    --     layers = {
    --         characternecoarc_animations.level3addon.dead,
    --         characternecoarc_animations.level3addon.dead_mask,
    --         characternecoarc_animations.level1.dead_shadow
    --     }
    -- }
}

-- Create prototypes
CharModHelper.create_prototypes(NECOARC)
