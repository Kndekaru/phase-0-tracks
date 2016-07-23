Hardware_store = {
	Tool_dept: {
		Capacity: {
			Aisles:4,
			shelves:100
		},
		Items: [
			"Hammers",
			"screwdrivers",
			"pliers",
			"wrenches",
			"vicegrips",
			"files",
			"level",
			"tape measure"
		]
	},
	Plumbing_dept:{
		Capacity: {
			Aisles:8,
			shelves:200
		},
		Items: [
			"PVC pipe",
			"Pipe Glue",
			"Plumbers wrench",
			"loose fittings",
			"cable saw",
			"toilet seals",
			"Plumbers tape"
		]	
	},
	Paint_dept:{
		Capacity:{
			Aisles:3,
			shelves:75
		},
		Items: [
			"Color swatches",
			"Terry Cloth",
			"Tarps",
			"Paint brushes",
			"Paint rollers",
			"Empty paint cans",
			"Tint",
			"Gallon paint bases",
			"Quart paint bases"
		]
	},
	Hardware_dept:{
		Capacity: {
			Aisles: 4,
			shelves: 75,
			bins: 200 
		},
		Items: [
			"Screws",
			"Nuts",
			"Bolts",
			"Anchors",
			"Hinges",
			"Assorted Lumber",
			"Hooks",
			"Specialty hardware"
		]
	},
	Electrical_dept:{
		Capacity: {
			Aisles: 2,
			shelves:75,
			bins: 25
		},
		Items: [
			"Electrical tape",
			"Soldering iron",
			"Electrical wire",
			"Conduit pipe",
			"Assorted household electrical items"
		]
	},
}

#call method in various levels of data structure 
#p Hardware_store[:Hardware_dept][:Items][0]
#p Hardware_store[:Electrical_dept][:Items].push("lightbulbs")
#p Hardware_store[:Paint_dept][:Items]
#p Hardware_store[:Hardware_dept][:Items].reverse

