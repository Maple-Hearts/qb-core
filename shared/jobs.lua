QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},

	['police'] = {
		label = 'MHSO',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {name = "Cadet", payment = 400},
            ['1'] = {name = "Probationary Officer", payment = 600},
            ['2'] = {name = "Deputy I", payment = 700},
            ['3'] = {name = "Deputy II", payment = 800},
            ['4'] = {name = "Deputy III", payment = 850},
            ['5'] = {name = "Senior Deputy", payment = 900},
            ['6'] = {name = "Detective", payment = 900},
            ['7'] = {name = "Corporal", payment = 1000},
            ['8'] = {name = "Sergeant", payment = 1250},
            ['9'] = {name = "Staff Sergeant", payment = 1500},
            ['10'] = {name = "Master Sergeant", payment = 1750},
            ['11'] = {name = "Lieutenant", isboss = true, payment = 2250, bankAuth = true},
            ['12'] = {name = "Captain", isboss = true, payment = 2750, bankAuth = true},
            ['13'] = {name = "Chief Deputy", isboss = true, payment = 3250, bankAuth = true},
            ['14'] = {name = "Undersheriff", isboss = true, payment = 3750, bankAuth = true},
            ['15'] = {name = "Sheriff", isboss = true, payment = 4250, bankAuth = true},
        },
	},

    ['doctor'] = {
        label = 'SADO',
        type = 'samr',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {name = 'Ast. Nurse', payment = 350},
            ['1'] = {name = 'Nurse', payment = 700},
            ['2'] = {name = 'Doctor', payment = 850},
            ['3'] = {name = 'Senior Doctor', payment = 900},
            ['4'] = {name = 'Medical Supervisor', payment = 1250, isboss = true, bankAuth = false},
            ['5'] = {name = 'Department Manager', payment = 1500, isboss = true, bankAuth = false},
            ['6'] = {name = 'Department Head', payment = 1750, isboss = true, bankAuth = false},
            ['7'] = {name = 'Ast. Medical Director', payment = 2250, isboss = true, bankAuth = true},
            ['8'] = {name = 'Medical Director', payment = 3750, isboss = true, bankAuth = true},
            ['9'] = {name = 'Commissioner', payment = 4250, isboss = true, bankAuth = true},
        },
    },

    ['ems'] = {
        label = 'SAMR',
        type = 'samr',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {name = 'EMSVO', payment = 350}, -- EMS Vehicle Operator
            ['1'] = {name = 'EMR', payment = 550}, -- Emergency Medical Responder
            ['2'] = {name = 'EMT', payment = 700}, -- Emergency Medical Technician
            ['3'] = {name = 'AEMT', payment = 900}, -- Advanced Emergency Medical Technician
            ['4'] = {name = 'Paramedic', payment = 900}, -- Paramedic
            ['5'] = {name = 'Lieutenant', payment = 1500, isboss = true, bankAuth = true},
            ['6'] = {name = 'Captain', payment = 1750, isboss = true, bankAuth = true},
            ['7'] = {name = 'Deputy Chief', payment = 2250, isboss = true, bankAuth = true},
            ['8'] = {name = 'Chief', payment = 3750, isboss = true, bankAuth = true},
            ['9'] = {name = 'Commissioner', payment = 4250, isboss = true, bankAuth = true},
        },
    },

    ['fire'] = {
        label = 'SAFR',
        type = 'samr',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {name = 'Probationary Firefighter', payment = 350},
            ['1'] = {name = 'Firefighter', payment = 550},
            ['2'] = {name = 'Fire Technician', payment = 700},
            ['3'] = {name = 'Lieutenant In Training', payment = 700},
            ['4'] = {name = 'Fire Lieutenant', payment = 1000},
            ['5'] = {name = 'Captain', payment = 1500, isboss = true, bankAuth = true},
            ['6'] = {name = 'Battalion Chief', payment = 1750, isboss = true, bankAuth = true},
            ['7'] = {name = 'Assistant Chief', payment = 2250, isboss = true, bankAuth = true},
            ['8'] = {name = 'Fire Chief', payment = 3750, isboss = true, bankAuth = true},
            ['9'] = {name = 'Commissioner', payment = 4250, isboss = true, bankAuth = true},
        },
    },

    ['judge'] = {
		label = 'Honorary',
        type = 'doj',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 100
            },
        },
	},

	['lawyer'] = {
		label = 'Law Firm',
        type = 'doj',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Public Defender',
                payment = 150
            },
            ['2'] = {
                name = 'Associate',
                payment = 250
            },
            ['3'] = {
                name = 'Full',
                payment = 350
            },
        },
	},

	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'House Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Broker',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Driver',
                payment = 75
            },
			['2'] = {
                name = 'Event Driver',
                payment = 100
            },
			['3'] = {
                name = 'Sales',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Finance',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 50
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 50
            },
        },
	},
}
