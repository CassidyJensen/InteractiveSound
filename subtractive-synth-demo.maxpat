{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 71.0, 84.0, 802.0, 705.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 663.0, 150.0, 20.0 ],
					"text" : "adjust gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 312.0, 663.0, 40.0, 22.0 ],
					"text" : "*~ 0.2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-50",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 389.0, 641.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 83.0, 464.0, 150.0, 20.0 ],
					"text" : "sweep frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 522.0, 150.0, 20.0 ],
					"text" : "center frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 191.5, 464.0, 99.0, 22.0 ],
					"text" : "200, 10000 4000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 304.5, 520.0, 58.0, 22.0 ],
					"text" : "line~ 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 819.0, 440.0, 28.0, 77.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 465.0, 520.0, 59.5, 20.0 ],
					"text" : "Q"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 465.0, 541.0, 49.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 344.5, 482.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.5, 450.0, 84.5, 34.0 ],
					"text" : "adjust frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 285.5, 601.0, 109.0, 22.0 ],
					"text" : "reson~ 1. 200 23"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 752.0, 15.0, 150.0, 20.0 ],
					"text" : "Preset !! saves lock mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 748.0, 39.0, 146.0, 20.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 6, "obj-11", "gain~", "list", 100, 10.0, 5, "obj-27", "kslider", "int", 69, 4, "<invalid>", "mc.function", "clear", 7, "<invalid>", "mc.function", "add", 0.0, 0.0, 0, 7, "<invalid>", "mc.function", "add", 5.319148936170213, 0.0, 0, 7, "<invalid>", "mc.function", "add", 5.319148936170213, 0.0, 0, 7, "<invalid>", "mc.function", "add", 5.319148936170213, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 29.255319148936174, 0.088188900795757, 0, 7, "<invalid>", "mc.function", "add", 45.212765957446805, 0.080314956428542, 0, 7, "<invalid>", "mc.function", "add", 53.191489361702125, 0.066141728823505, 0, 7, "<invalid>", "mc.function", "add", 85.106382978723403, 0.044094485882336, 0, 7, "<invalid>", "mc.function", "add", 90.425531914893611, 0.0299212582773, 0, 7, "<invalid>", "mc.function", "add", 93.085106382978722, 0.017322819799166, 0, 7, "<invalid>", "mc.function", "add", 207.446808510638306, 0.103937002436935, 0, 7, "<invalid>", "mc.function", "add", 212.7659574468085, 0.111811062970997, 0, 7, "<invalid>", "mc.function", "add", 311.170212765957444, 0.047244053997727, 0, 7, "<invalid>", "mc.function", "add", 425.531914893617, 0.020472423399015, 0, 7, "<invalid>", "mc.function", "add", 452.127659574468112, 0.07086608099659, 0, 7, "<invalid>", "mc.function", "add", 478.723404255319224, 0.01889762159909, 0, 7, "<invalid>", "mc.function", "add", 500.0, 0.01102361259947, 0, 7, "<invalid>", "mc.function", "add", 500.0, 0.017322819799166, 0, 7, "<invalid>", "mc.function", "add", 500.0, 0.0, 0, 5, "<invalid>", "mc.function", "domain", 500.0, 6, "<invalid>", "mc.function", "range", 0.0, 0.118110239505768, 5, "<invalid>", "mc.function", "mode", 0, 6, "obj-61", "gain~", "list", 143, 10.0, 6, "obj-5", "gain~", "list", 91, 10.0, 6, "obj-7", "gain~", "list", 106, 10.0, 4, "obj-10", "mc.function", "clear", 7, "obj-10", "mc.function", "add", 0.0, 0.0, 0, 7, "obj-10", "mc.function", "add", 162.2340425531915, 0.045669306724998, 0, 7, "obj-10", "mc.function", "add", 555.851063829787222, 0.072440969287928, 0, 7, "obj-10", "mc.function", "add", 688.829787234042556, 0.103937042891376, 0, 7, "obj-10", "mc.function", "add", 848.404255319148888, 0.045669306724998, 0, 7, "obj-10", "mc.function", "add", 1000.0, 0.0, 0, 5, "obj-10", "mc.function", "domain", 1000.0, 6, "obj-10", "mc.function", "range", 0.0, 0.118110239505768, 5, "obj-10", "mc.function", "mode", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 6, "obj-11", "gain~", "list", 100, 10.0, 5, "obj-27", "kslider", "int", 71, 4, "<invalid>", "mc.function", "clear", 7, "<invalid>", "mc.function", "add", 0.0, 0.0, 0, 7, "<invalid>", "mc.function", "add", 5.319148936170213, 0.0, 0, 7, "<invalid>", "mc.function", "add", 5.319148936170213, 0.0, 0, 7, "<invalid>", "mc.function", "add", 5.319148936170213, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 7.978723404255319, 0.0, 0, 7, "<invalid>", "mc.function", "add", 29.255319148936174, 0.523255237956594, 0, 7, "<invalid>", "mc.function", "add", 45.212765957446805, 0.476536403768309, 0, 7, "<invalid>", "mc.function", "add", 53.191489361702125, 0.392441744279785, 0, 7, "<invalid>", "mc.function", "add", 85.106382978723403, 0.261627829519853, 0, 7, "<invalid>", "mc.function", "add", 90.425531914893611, 0.177533170031332, 0, 7, "<invalid>", "mc.function", "add", 93.085106382978722, 0.102782278884329, 0, 7, "<invalid>", "mc.function", "add", 207.446808510638306, 0.616694169582514, 0, 7, "<invalid>", "mc.function", "add", 212.7659574468085, 0.663413693028864, 0, 7, "<invalid>", "mc.function", "add", 311.170212765957444, 0.280315306048178, 0, 7, "<invalid>", "mc.function", "add", 425.531914893617, 0.121469965954208, 0, 7, "<invalid>", "mc.function", "add", 452.127659574468112, 0.42047295907226, 0, 7, "<invalid>", "mc.function", "add", 478.723404255319224, 0.112126122419269, 0, 7, "<invalid>", "mc.function", "add", 500.0, 0.065406904744576, 0, 7, "<invalid>", "mc.function", "add", 500.0, 0.102782278884329, 0, 7, "<invalid>", "mc.function", "add", 500.0, 0.0, 0, 5, "<invalid>", "mc.function", "domain", 500.0, 6, "<invalid>", "mc.function", "range", 0.0, 0.700787425041199, 5, "<invalid>", "mc.function", "mode", 0, 6, "obj-61", "gain~", "list", 143, 10.0, 6, "obj-5", "gain~", "list", 91, 10.0, 6, "obj-7", "gain~", "list", 106, 10.0, 4, "obj-10", "mc.function", "clear", 7, "obj-10", "mc.function", "add", 0.0, 0.0, 0, 7, "obj-10", "mc.function", "add", 162.2340425531915, 0.27097178604194, 0, 7, "obj-10", "mc.function", "add", 555.851063829787222, 0.429817315790665, 0, 7, "obj-10", "mc.function", "add", 688.829787234042556, 0.616694409612692, 0, 7, "obj-10", "mc.function", "add", 848.404255319148888, 0.27097178604194, 0, 7, "obj-10", "mc.function", "add", 1000.0, 0.0, 0, 5, "obj-10", "mc.function", "domain", 1000.0, 6, "obj-10", "mc.function", "range", 0.0, 0.700787425041199, 5, "obj-10", "mc.function", "mode", 0, 5, "<invalid>", "number", "int", 0, 5, "obj-28", "number", "int", 1652, 5, "obj-31", "number", "int", 17, 6, "obj-34", "gain~", "list", 129, 10.0, 5, "obj-50", "flonum", "float", 0.800000011920929 ]
						}
, 						{
							"number" : 3,
							"data" : [ 6, "obj-11", "gain~", "list", 121, 10.0, 5, "obj-27", "kslider", "int", 74, 6, "obj-61", "gain~", "list", 139, 10.0, 6, "obj-5", "gain~", "list", 102, 10.0, 6, "obj-7", "gain~", "list", 129, 10.0, 4, "obj-10", "mc.function", "clear", 7, "obj-10", "mc.function", "add", 0.0, 0.0, 0, 7, "obj-10", "mc.function", "add", 162.2340425531915, 0.051758600364758, 0, 7, "obj-10", "mc.function", "add", 555.851063829787222, 0.082099848854445, 0, 7, "obj-10", "mc.function", "add", 688.829787234042556, 0.117795435312899, 0, 7, "obj-10", "mc.function", "add", 848.404255319148888, 0.051758600364758, 0, 7, "obj-10", "mc.function", "add", 1000.0, 0.0, 0, 5, "obj-10", "mc.function", "domain", 1000.0, 6, "obj-10", "mc.function", "range", 0.0, 0.133858263492584, 5, "obj-10", "mc.function", "mode", 0, 5, "obj-28", "number", "int", 1652, 5, "obj-31", "number", "int", 80, 6, "obj-34", "gain~", "list", 147, 10.0, 5, "obj-50", "flonum", "float", 0.800000011920929 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"data" : [ 						{
							"addpoints" : [ 0.0, 0.0, 0, 162.2340425531915, 0.222257535515333, 0, 555.851063829787222, 0.352546435645013, 0, 688.829787234042556, 0.505827494621105, 0, 848.404255319148888, 0.222257535515333, 0, 1000.0, 0.0, 0 ]
						}
 ],
					"id" : "obj-10",
					"maxclass" : "mc.function",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "float", "", "", "bang", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 625.5, 212.0, 200.0, 118.0 ],
					"range" : [ 0.0, 0.574803173542023 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 444.0, 224.0, 24.0, 83.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 444.0, 181.0, 40.0, 22.0 ],
					"text" : "tri~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 328.0, 220.0, 24.0, 83.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 322.5, 145.0, 29.5, 22.0 ],
					"text" : "* 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 328.0, 181.0, 59.0, 22.0 ],
					"text" : "rect~ 440"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 739.0, 399.0, 139.0, 22.0 ],
					"text" : "receive~ anyNameboom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 289.0, 703.0, 126.0, 22.0 ],
					"text" : "send~ anyNameboom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 219.5, 154.0, 29.5, 22.0 ],
					"text" : "* 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 219.5, 220.0, 25.0, 83.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 219.5, 183.0, 60.0, 22.0 ],
					"text" : "saw~ 440"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 646.0, 154.0, 82.0, 22.0 ],
					"text" : "setrange 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 652.0, 113.0, 39.0, 22.0 ],
					"text" : "/ 127."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 798.0, 94.0, 150.0, 20.0 ],
					"text" : "set length of time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 913.0, 119.0, 35.0, 22.0 ],
					"text" : "5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 756.0, 119.0, 29.5, 22.0 ],
					"text" : "500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 867.0, 119.0, 35.0, 22.0 ],
					"text" : "2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 812.0, 119.0, 35.0, 22.0 ],
					"text" : "1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 812.0, 154.0, 81.0, 22.0 ],
					"text" : "setdomain $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.0, 123.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 272.0, 407.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 472.0, 399.0, 34.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.5, 145.0, 101.0, 20.0 ],
					"text" : "midi to frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 132.0, 120.0, 32.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 33.0, 150.0, 20.0 ],
					"text" : "kslider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 29.0, 15.0, 420.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 617.0, 619.0, 86.0, 20.0 ],
					"text" : "oscillascope"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 247.0, 83.0, 20.0 ],
					"text" : "gain control"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Big Scope.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 705.0, 574.0, 372.0, 214.0 ],
					"varname" : "bp.Big Scope",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 126.5, 220.0, 25.0, 83.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 767.0, 524.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 178.0, 60.0, 20.0 ],
					"text" : "oscillator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 126.5, 178.0, 43.0, 22.0 ],
					"text" : "cycle~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 2,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 3,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"order" : 2,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 3 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 2,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"order" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 2 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-12::obj-1" : [ "divide", "divide", 0 ],
			"obj-12::obj-129" : [ "Points", "Points", 0 ],
			"obj-12::obj-52" : [ "multiply", "multiply", 0 ],
			"obj-12::obj-69" : [ "Lock", "Lock", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "bp.Big Scope.maxpat",
				"bootpath" : "C74:/packages/Beap/clippings/BEAP/Scope",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
