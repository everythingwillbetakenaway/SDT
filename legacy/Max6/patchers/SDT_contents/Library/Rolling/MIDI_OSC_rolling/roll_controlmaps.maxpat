{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 4
		}
,
		"rect" : [ 35.0, 117.0, 1386.0, 570.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-17",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 16,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 2458.0, 98.0, 573.0, 27.0 ],
					"text" : "unpack DIAMETER_MAP s VELOCITY_MAP s CONTACTSTIFFNESS_MAP s CONTACTSURFACE_MAP s GLOBALFREQUENCY_MAP s GLOBALDECAY_MAP s GLOBALGAIN_MAP s PRESETINTERPOLATION_MAP s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2458.0, 65.0, 111.0, 20.0 ],
					"text" : "r #1roll_initallmaps"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 16,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 879.0, 563.0, 27.0 ],
					"text" : "pack DIAMETER_MAP s VELOCITY_MAP s CONTACTSTIFFNESS_MAP s CONTACTSURFACE_MAP s GLOBALFREQUENCY_MAP s GLOBALDECAY_MAP s GLOBALGAIN_MAP s PRESETINTERPOLATION_MAP s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 119.0, 848.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 809.0, 97.0, 17.0 ],
					"text" : "r roll_settings_query2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 119.0, 924.0, 57.0, 17.0 ],
					"text" : "s roll_maps"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1097.0, 87.0, 69.0, 20.0 ],
					"text" : "pack 0 500"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1097.0, 107.0, 46.0, 20.0 ],
					"text" : "line"
				}

			}
, 			{
				"box" : 				{
					"comment" : "preset interpolation",
					"id" : "obj-36",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3017.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-37",
					"maxclass" : "bpatcher",
					"name" : "roll_preset_interpol.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 3009.0, 209.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2996.0, 0.0, 427.0, 480.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "global gain",
					"id" : "obj-34",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2597.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "roll_globgainmap.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2589.0, 209.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2568.0, 0.0, 427.0, 480.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "global decay",
					"id" : "obj-32",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2177.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "roll_globdecmap.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2169.0, 209.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2140.0, 0.0, 427.0, 480.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "global frequency",
					"id" : "obj-30",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1757.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "roll_globfreqmap.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1749.0, 209.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1712.0, 0.0, 427.0, 480.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "contact surface",
					"id" : "obj-28",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1337.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-29",
					"maxclass" : "bpatcher",
					"name" : "roll_cont_surf_map.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1329.0, 209.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1284.0, 0.0, 427.0, 480.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Stiffness",
					"id" : "obj-26",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 917.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-27",
					"maxclass" : "bpatcher",
					"name" : "roll_cont_stiff_map.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 909.0, 209.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 856.0, 0.0, 427.0, 480.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "velocity",
					"id" : "obj-24",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-25",
					"maxclass" : "bpatcher",
					"name" : "roll_velocitymap.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 489.0, 209.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 428.0, 0.0, 427.0, 480.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "diameter",
					"id" : "obj-4",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 693.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1097.0, 66.0, 51.0, 21.0 ],
					"text" : "* -428"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1097.0, 127.0, 76.0, 19.0 ],
					"text" : "offset $1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1097.0, 148.0, 78.0, 21.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-9",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1097.0, 28.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"bgmode" : 1,
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "roll_diametermap.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 18.0, 202.0, 420.0, 474.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 427.0, 480.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 428.5, 860.0, 164.766663, 860.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2504.43335, 163.0, 27.5, 163.0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2578.300049, 165.0, 498.5, 165.0 ],
					"source" : [ "obj-17", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2652.166748, 162.0, 918.5, 162.0 ],
					"source" : [ "obj-17", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2726.033447, 162.0, 1338.5, 162.0 ],
					"source" : [ "obj-17", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2799.899902, 160.0, 1758.5, 160.0 ],
					"source" : [ "obj-17", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2873.766602, 161.0, 2178.5, 161.0 ],
					"source" : [ "obj-17", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2947.633301, 164.0, 2598.5, 164.0 ],
					"source" : [ "obj-17", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 3021.5, 170.0, 3018.5, 170.0 ],
					"source" : [ "obj-17", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 899.5, 860.0, 237.300003, 860.0 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1319.5, 861.0, 309.833344, 861.0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1739.5, 862.0, 382.366669, 862.0 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 9 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2159.5, 862.0, 454.899994, 862.0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2579.5, 862.0, 527.43335, 862.0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2999.5, 862.0, 599.966675, 862.0 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 3419.5, 861.0, 672.5, 861.0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "roll_diametermap.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "roll_velocitymap.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "roll_cont_stiff_map.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "roll_cont_surf_map.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "roll_globfreqmap.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "roll_globdecmap.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "roll_globgainmap.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "roll_preset_interpol.maxpat",
				"bootpath" : "/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Rolling/MIDI_OSC_rolling",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}