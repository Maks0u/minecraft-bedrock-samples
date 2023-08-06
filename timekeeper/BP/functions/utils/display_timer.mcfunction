scoreboard players operation @s minute_display = timekeeper minute_display
scoreboard players operation @s second_display = timekeeper second_display
scoreboard players operation @s tenth = timekeeper tenth

titleraw @s[scores={ minute_display=..9,  second_display=..9 }] actionbar { "rawtext": [ { "translate": "0%%s:0%%s.%%s", "with": { "rawtext": [ { "score": {"name": "@s", "objective": "minute_display" } }, { "score": {"name": "@s", "objective": "second_display" } }, { "score": {"name": "@s", "objective": "tenth" } } ] } } ] }
titleraw @s[scores={ minute_display=..9,  second_display=10..}] actionbar { "rawtext": [ { "translate": "0%%s:%%s.%%s", "with": { "rawtext": [ { "score": {"name": "@s", "objective": "minute_display" } }, { "score": {"name": "@s", "objective": "second_display" } }, { "score": {"name": "@s", "objective": "tenth" } } ] } } ] }
titleraw @s[scores={ minute_display=10.., second_display=..9 }] actionbar { "rawtext": [ { "translate": "%%s:0%%s.%%s", "with": { "rawtext": [ { "score": {"name": "@s", "objective": "minute_display" } }, { "score": {"name": "@s", "objective": "second_display" } }, { "score": {"name": "@s", "objective": "tenth" } } ] } } ] }
titleraw @s[scores={ minute_display=10.., second_display=10..}] actionbar { "rawtext": [ { "translate": "%%s:%%s.%%s", "with": { "rawtext": [ { "score": {"name": "@s", "objective": "minute_display" } }, { "score": {"name": "@s", "objective": "second_display" } }, { "score": {"name": "@s", "objective": "tenth" } } ] } } ] }
