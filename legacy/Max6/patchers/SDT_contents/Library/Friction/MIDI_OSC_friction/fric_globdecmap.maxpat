{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 4
		}
,
		"rect" : [ 35.0, 160.0, 1211.0, 641.0 ],
		"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
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
					"comment" : "",
					"id" : "obj-4",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 544.0, 43.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 542.0, 91.0, 75.0, 17.0 ],
					"text" : "prepend symbol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 677.0, 530.0, 45.0, 17.0 ],
					"text" : "strippath"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-5",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 677.0, 556.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 462.0, 549.0, 120.0, 20.0 ],
					"text" : "bgcolor 250 250 250"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-39",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 677.0, 238.0, 169.0, 46.0 ],
					"text" : "script sendbox friction_globaldecaymap replace $1, script connect friction_globaldecaymap 0 outlet_bottom 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 9.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 491.0, 50.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.0, 441.0, 39.0, 15.0 ],
					"text" : "update"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"fontname" : "Helvetica",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 174.0, 25.0, 121.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 153.5, 5.0, 121.0, 18.0 ],
					"text" : "Global Decay"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.472826, 0.472826, 0.472826, 1.0 ],
					"id" : "obj-46",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.927273, 0.17163, 0.182563, 0.87 ],
					"patching_rect" : [ 510.0, 75.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 204.0, 456.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 749.0, 134.0, 47.0, 17.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 4
						}
,
						"rect" : [ 167.0, 342.0, 418.0, 230.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 43.0, 378.0, 29.0 ],
									"text" : "1) DROP-DOWN MENU: navigate menu items to select the available control mapping. The selected mapping is displayed in the box below"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 139.0, 378.0, 29.0 ],
									"text" : "3) CLICK TO UPDATE LIST: click on the box to update control mapping menu items in the drop-down menu."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 78.0, 360.0, 52.0 ],
									"text" : "2) DISPLAY BOX (purple color): click on the box to load and edit the correspondent control mapping patch. \"bang to strike\" mapping Max patch must be saved in SDT_contents/Library/Friction/MIDI_OSC_friction/fric_globdecay."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.752941, 0.717647, 0.960784, 1.0 ],
									"id" : "obj-4",
									"ignoreclick" : 1,
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 43.0, 119.0, 13.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.752941, 0.717647, 0.960784, 1.0 ],
									"id" : "obj-5",
									"ignoreclick" : 1,
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 78.0, 162.0, 13.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.752941, 0.717647, 0.960784, 1.0 ],
									"id" : "obj-6",
									"ignoreclick" : 1,
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 139.0, 133.0, 13.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Black",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 8.0, 322.0, 23.0 ],
									"text" : "Friction N Global Decay MIDI control mapping"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.67451, 0.945098, 0.611765, 1.0 ],
									"id" : "obj-8",
									"ignoreclick" : 1,
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 119.0, 360.0, 13.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [  ],
						"dependency_cache" : [  ]
					}
,
					"patching_rect" : [ 488.0, 461.0, 51.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 435.0, 51.0, 15.0 ],
					"saved_object_attributes" : 					{
						"tags" : "",
						"default_fontsize" : 12.0,
						"description" : "",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"digest" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial"
					}
,
					"text" : "p readme"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 462.0, 432.0, 47.0, 17.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"fontname" : "Helvetica",
					"fontsize" : 9.0,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 462.0, 353.0, 109.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 248.0, 458.0, 148.0, 13.0 ],
					"text" : "Globdecay_map.mxb"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 481.0, 307.0, 60.0, 17.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 516.5, 267.0, 49.0, 17.0 ],
					"text" : "strippath"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 462.0, 408.0, 66.0, 17.0 ],
					"text" : "prepend load"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 561.0, 129.0, 37.0, 17.0 ],
					"text" : "t bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 749.0, 107.0, 131.0, 17.0 ],
					"text" : "sprintf %sfric_globdecay/"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 618.0, 36.0, 48.0, 17.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 561.0, 150.0, 66.0, 17.0 ],
					"text" : "pack depth 4"
				}

			}
, 			{
				"box" : 				{
					"autopopulate" : 1,
					"bgcolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"bgcolor2" : [ 0.647059, 0.647059, 0.647059, 1.0 ],
					"depth" : 4,
					"discolor" : [ 0.647059, 0.647059, 0.647059, 1.0 ],
					"fontname" : "Helvetica",
					"fontsize" : 12.0,
					"framecolor" : [ 0.8, 0.8, 0.8, 1.0 ],
					"hltcolor" : [ 0.411765, 0.090196, 0.090196, 1.0 ],
					"id" : "obj-16",
					"items" : [ ".svn/all-wcprops", ",", ".svn/entries", ",", ".svn/prop-base", ",", ".svn/props", ",", ".svn/text-base", ",", ".svn/text-base/Globdecay_map.maxpat.svn-base", ",", ".svn/tmp", ",", ".svn/tmp/prop-base", ",", ".svn/tmp/props", ",", ".svn/tmp/text-base", ",", "Globdecay_map.maxpat" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.0, 174.0, 131.0, 18.0 ],
					"prefix" : "Stef:/Users/sdm/Documents/LAVORI/RICERCA/SObs/SoundDesignTools/branches/SObWay/SDT_Max6/SDT_patches/SDT_contents/Library/Friction/MIDI_OSC_friction/fric_globdecay/",
					"presentation" : 1,
					"presentation_rect" : [ 81.0, 456.0, 121.0, 18.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 749.0, 160.0, 76.0, 17.0 ],
					"text" : "prepend prefix"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 618.0, 70.0, 75.0, 15.0 ],
					"text" : "autopopulate 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 698.0, 70.0, 29.0, 15.0 ],
					"text" : "path"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 698.0, 87.0, 61.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"hidden" : 1,
					"id" : "obj-21",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 561.0, 15.0, 15.0 ],
					"varname" : "outlet_bottom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 9.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 461.0, 324.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.0, 441.0, 100.0, 15.0 ],
					"text" : "load and edit current "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 9.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 208.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 85.0, 441.0, 74.0, 15.0 ],
					"text" : "browse maps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 91.0, 410.0, 410.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 23.0, 410.0, 410.0 ],
					"varname" : "friction_globaldecaymap"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 627.5, 66.0, 707.5, 66.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 570.5, 170.0, 469.5, 170.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 525.5, 196.0, 686.5, 196.0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 525.5, 203.0, 686.5, 203.0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 525.5, 199.0, 526.0, 199.0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 758.5, 180.0, 469.5, 180.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 1,
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
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 686.5, 307.0, 998.0, 307.0, 998.0, 79.0, 707.5, 79.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 471.5, 399.0, 471.5, 399.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 490.5, 346.0, 471.5, 346.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 526.0, 288.0, 490.5, 288.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ]
	}

}