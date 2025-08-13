NECOARC = require("__CharacterModHelper__.common")("NecoArc")
NECOARC.is_debug = false
local charname = "NecoArc-skin"

-- Setup new animations, etc
local ICONPATH = "__NecoArcPlayer__/graphics/icons/"
local SR_IMGPATH = "__NecoArcPlayer__/graphics/SR/"


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
            width = 128, 
            height = 128, 
            shift = util.by_pixel(-7.0, -5.5),
            frame_count = 2,
            scale = 0.5,
        },
        dead_mask = {
            filename = SR_IMGPATH .. "level1_dead_mask.png",
            width =  128, 
            height =  128, 
            shift = util.by_pixel(-7.0, -5.5),
            frame_count = 2,
            apply_runtime_tint = true,
            scale = 0.5,
        },
        dead_shadow = {
            filename = SR_IMGPATH .. "level1_dead_shadow.png",
            width =  128, 
            height =  128, 
            shift = util.by_pixel(-7.5, -2.5),
            frame_count = 2,
            draw_as_shadow = true,
            scale = 0.5,
        },
        idle = {
            filename = SR_IMGPATH .. "level1_idle.png",
            width = 128,
            height = 128,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            scale = 0.5,
        },
        idle_mask = {
            filename = SR_IMGPATH .. "level1_idle_mask.png",
            width = 128,
            height = 128,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            apply_runtime_tint = true,
            scale = 0.5,
        },
        idle_shadow = {
            filename = SR_IMGPATH .. "level1_idle_shadow.png",
            width = 128,
            height = 128,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            draw_as_shadow = true,
            scale = 0.5,
        },
        idle_gun = {
            filename = SR_IMGPATH .. "level1_idle_gun.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            scale = 0.5
        },
        idle_gun_mask = {
            filename = SR_IMGPATH .. "level1_idle_gun_mask.png",
            width = 128, 
            height = 128,
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            apply_runtime_tint = true,
            scale = 0.5
        },
        idle_gun_shadow = {
            filename = SR_IMGPATH .. "level1_idle_gun_shadow.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 18,
            direction_count = 8,
            animation_speed = 0.15,
            draw_as_shadow = true,
            scale = 0.5
        },
        mining_tool = {
            filename = SR_IMGPATH .. "level1_mining_tool.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.9,
            scale = 0.5 
        },
        mining_tool_mask = {
            filename = SR_IMGPATH .. "level1_mining_tool_mask.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.9,
            apply_runtime_tint = true,
            scale = 0.5 
        },
        mining_tool_shadow = {
            filename = SR_IMGPATH .. "level1_mining_tool_shadow.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.9,
            draw_as_shadow = true,
            scale = 0.5 
        },
        running = {
            filename = SR_IMGPATH .. "level1_running.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.6,
            scale = 0.5,
        },
        running_mask = {
            filename = SR_IMGPATH .. "level1_running_mask.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.6,
            apply_runtime_tint = true,
            scale = 0.5,
        },
        running_shadow = {
            filename = SR_IMGPATH .. "level1_running_shadow.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(0.0, -18.0),
            frame_count = 24,
            direction_count = 8,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = 0.5,
        },
        running_gun = {
            filename = SR_IMGPATH .. "level1_running_gun.png",
            width = 128,
            height = 128, 
            shift = util.by_pixel(2.5, -18.0),
            frame_count = 24,
            direction_count = 18,
            animation_speed = 0.6,
            scale = 0.5,
        },
        running_gun_mask = {
            filename = SR_IMGPATH .. "level1_running_gun_mask.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(2.5, -18.0),
            frame_count = 24,
            direction_count = 18,
            animation_speed = 0.6,
            apply_runtime_tint = true,
            scale = 0.5,
        },
        running_gun_shadow = {
            filename = SR_IMGPATH .. "level1_running_gun_shadow.png",
            width = 128, 
            height = 128, 
            shift = util.by_pixel(2.5, -18.0),
            frame_count = 24,
            direction_count = 18,
            animation_speed = 0.6,
            draw_as_shadow = true,
            scale = 0.5,
        }
    },
}



-- Initialize prototypes for character and character-corpse
NECOARC = {}
NECOARC.character = { name = charname }
NECOARC.corpse = { name = charname .. "-corpse" }

-- Character
NECOARC.character.localised_name = {"entity-name." .. charname}
NECOARC.character.localised_description = {"entity-description." .. charname}
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
                characternecoarc_animations.level1.running_gun_shadow
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
NECOARC.corpse.name = charname.."-corpse"
NECOARC.corpse.localised_name = {"entity-name." .. NECOARC.corpse.name}
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