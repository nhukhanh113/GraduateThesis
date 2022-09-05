VERSION-18.00
SECTION GRAPHIC
ENDSECTION
SECTION MODEL
OS-1.50
GTEEditorKit
1
OSOBJECT "Line" 0 301 0 0 0 0
Type 1 1
Id 1 1
StartAnchor 1 3
EndAnchor 1 1
RefId 1 -1
UUId 12 os_UUId 1 "631479C81048-0053CA53-4E48554B48-01"
Error 1 0
..
GTELine
Managed 1
Root
TMULTI-21 "" 7 0 -1 0 0 0 2 1 0 0 0 0 0 0 - 0 
TPOLYLINE-21 "poly" 0 0 -1 0 0 0 1 1 0 0 0 0 0 0 - 0 0 2 
184 301 
183 381 0 
TTEXT-21 "text" 0 0 -1 0 0 0 1 1 0 0 0 0 0 128 - "Arial" 12 1 0 "1" "" 185.5 333.5 0 
..
--
ENDSECTION
SECTION ADDON
ADDON ASE  "Pipe" "bt_pipe" Cpp res/cpp/bt__pipe  !! "line1"
_C_ "noname" "noname" V1
	set int 0
	0_version int 28
	_C_ "Pipe" "bt_pipe" V1
		tree_title string "Pipe"
		0_page string "global_init"
		0_version int 28
		ord long 1
		0_bits int 2
		0_ok int 1
		_C_ "GeneralPipe" "general" V1
			0_type string "class"
			lbl_element_author string "Nhu Khánh"
			lbl_element_comment string ""
			res_name string ""
			lbl_element_date string "4. Sep 2022 23:04:41"
			pipe_length double 75 "length~mm"
			gridPoints int 10
			diameter double 54 "length~mm"
			diameter~sel string "const"
			hydraulicSetting int 0
			isBendingRadius int 0
			hydraulicUnit int 0
			hydrDiameter double INF "length~mm"
			hydrDiameter~sel string "const"
			hydrArea double INF "area~mm2"
			hydrArea~sel string "const"
			bending_radius double 100000 "length~mm"
			bending_radius~sel string "const"
			lam_fric_coeff double 64 "dimensionless~no"
			lam_fric_coeff~sel string "const"
			turbulentFriction int 0
			friction_coeff double 0.019 "dimensionless~no"
			friction_coeff~sel string "const"
			surfaceRoughness double 0.1 "length~mm"
			surfaceRoughness~sel string "const"
			frictionMultiplier double 1 "dimensionless~no"
			frictionMultiplier~sel string "const"
			absorptiveMaterial int 0
			gasWallTransfer int 1
			heatCoefficient double 10 "heat_transf_coeff~W_m2K"
			heat_transf_fact double 1 "dimensionless~no"
			heat_transf_fact~sel string "const"
			wall_temp double 24.85 "temperature~degC"
			wall_temp~sel string "const"
			btn_var_wall_temp int 0
			perforation int 1
			type int 0
			inner_type int 0
			inner_pipe int 0
			outer_pipe int 0
			outer_plenum int 0
			porosity double INF "dimensionless~no"
			porosity~sel string "const"
			porosity_in double INF "dimensionless~no"
			porosity_out double INF "dimensionless~no"
			perf_hole_diam double INF "length~mm"
			perf_hole_diam~sel string "const"
			perf_wall_thick double INF "length~mm"
			perf_wall_thick~sel string "const"
			enableChemistry int 0
			singleZone string "None"
			atmChemistry int 0
			chemistrySelection string "None"
			couple_upstream_element int 0
			0_bits int 2
			_C_ "Diameter3" "diameter_table" V1
				symbol string "table"
				diameter array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 length~mm"
				0_bits int 258
			..
			_C_ "HydraulicDiameterInPipe" "hydrDiameter_table" V1
				symbol string "table"
				hydrDiameter array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 length~mm"
				0_bits int 256
			..
			_C_ "HydraulicAreaInPipe" "hydrArea_table" V1
				symbol string "table"
				hydrArea array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 area~mm2"
				0_bits int 256
			..
			_C_ "BendingRadius3" "bending_radius_table" V1
				symbol string "table"
				bending_radius array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 length~mm"
				0_bits int 256
			..
			_C_ "LamFrictionCoefficient3" "lam_fric_coeff_table" V1
				symbol string "table"
				lam_fric_coeff array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
				0_bits int 256
			..
			_C_ "FrictionCoefficient3" "friction_coeff_table" V1
				symbol string "table"
				friction_coeff array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
				0_bits int 256
			..
			_C_ "SurfaceRoughness3" "surfaceRoughness_table" V1
				symbol string "table"
				surfaceRoughness array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 length~mm"
				0_bits int 256
			..
			_C_ "FrictionMultiplier3" "frictionMultiplier_table" V1
				symbol string "table"
				frictionMultiplier array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
				0_bits int 256
			..
			_C_ "HeatTransferFactor3" "heat_transf_fact_table" V1
				symbol string "table"
				heat_transf_fact array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
				0_bits int 256
			..
			_C_ "WallTemperature3" "wall_temp_table" V1
				symbol string "table"
				tree_invisible int 0
				wall_temp array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 temperature~K"
				0_bits int 256
			..
			_C_ "Porosity3" "porosity_table" V1
				symbol string "table"
				tree_invisible int 1
				porosity array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
				0_bits int 256
			..
			_C_ "PerfHoleDiam3" "perf_hole_diam_table" V1
				symbol string "table"
				tree_invisible int 1
				perf_hole_diam array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 length~mm"
				0_bits int 256
			..
			_C_ "PerfWallThick3" "perf_wall_thick_table" V1
				symbol string "table"
				tree_invisible int 1
				perf_wall_thick array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 length~mm <COL> 1 length~mm"
				0_bits int 256
			..
		..
		_C_ "Initialization3" "global_init" V1
			0_type string "class"
			0_bits int 2
			_C_ "Struct" "local" V1
				0_type string "struct"
				0_value int 0
				comb_local_set int 0
				pressure double INF "pressure~bar"
				pressure~sel string "const"
				gas_temp double INF "temperature~degC"
				gas_temp~sel string "const"
				fuel_vapour double INF
				fuel_vapour~sel string "const"
				comb_product double INF
				comb_product~sel string "const"
				ratio_type int 0
				ratio_value double INF
				ratio_value~sel string "const"
				_C_ "Pressure3" "pressure_table" V1
					symbol string "table"
					pressure array-1 none 2 3
						array-1 double 2 0
0
0
						array-1 double 2 0
0
0
						double 0
						int 2
						int 2
						DEF "<COL> 0 length~mm <COL> 1 pressure~bar"
					0_bits int 258
				..
				_C_ "GasTemperature3" "gas_temp_table" V1
					symbol string "table"
					gas_temp array-1 none 2 3
						array-1 double 2 0
0
0
						array-1 double 2 0
-273.15
-273.15
						double 0
						int 2
						int 2
						DEF "<COL> 0 length~mm <COL> 1 temperature~degC"
					0_bits int 258
				..
				_C_ "FuelVapour3" "fuel_vapour_table" V1
					symbol string "table"
					fuel_vapour array-1 none 2 3
						array-1 double 2 0
0
0
						array-1 double 2 0
0
0
						double 0
						int 2
						int 2
						DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
					0_bits int 256
				..
				_C_ "CombustionProducts3" "comb_product_table" V1
					symbol string "table"
					comb_product array-1 none 2 3
						array-1 double 2 0
0
0
						array-1 double 2 0
0
0
						double 0
						int 2
						int 2
						DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
					0_bits int 258
				..
				_C_ "AFRatio3" "ratio_value_table" V1
					symbol string "table"
					comb_afr int 0
					ratio_value array-1 none 2 3
						array-1 double 2 0
0
0
						array-1 double 2 0
0
0
						double 0
						int 2
						int 2
						DEF "<COL> 0 length~mm <COL> 1 dimensionless~no"
					0_bits int 258
				..
			..
			_C_ "Struct" "global" V1
				0_type string "struct"
				0_value int 1
				comb_global_set int 0
				pressure double 0.97 "pressure~bar"
				gas_temp double 24.85 "temperature~degC"
				fuel_vapour double 0
				comb_product double 0
				ratio_value double 10000
				fraction1 double INF
				fraction2 double INF
				fraction3 double INF
			..
		..
		_C_ "VariableWallTemperature3" "vwtemp" V1
			0_type string "class"
			0_bits int 256
			solidMaterials array-1 none 3 3
				array-1 none 0 0
				array-1 none 0 0
				array-1 none 0 0
				string ""
				int 1
				int 3
				DEF "<COL> 1 length~mm"
			ambient_temp double 298.15 "temperature~K"
			ambient_temp~sel string "const"
			radiationTemperature double 298.15 "temperature~K"
			radiationTemperature~sel string "const"
			convectionType int 0
			coolant int 0
			cool_velocity double 25 "velocity~m_s"
			convectionCoefficient double 30 "heat_transf_coeff~W_m2K"
			convectionCoefficient~sel string "const"
			_C_ "AmbientTemperature3" "ambient_temp_table" V1
				symbol string "table"
				ambient_temp array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
-273.15
-273.15
					double 0
					int 2
					int 2
					DEF "<COL> 0 time~s <COL> 1 temperature~degC"
				0_bits int 258
			..
			_C_ "RadiationSinkTemperature3" "radiationTemperature_table" V1
				symbol string "table"
				radiationTemperature array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 time~s <COL> 1 temperature~K"
				0_bits int 256
			..
			_C_ "ConvectionCoefficient3" "convectionCoefficient_table" V1
				symbol string "table"
				convectionCoefficient array-1 none 2 3
					array-1 double 2 0
0
0
					array-1 double 2 0
0
0
					double 0
					int 2
					int 2
					DEF "<COL> 0 time~s <COL> 1 heat_transf_coeff~W_m2K"
				0_bits int 256
			..
		..
		_C_ "ResultsSpecification3" "results" V1
			0_type string "class"
			positions int 2
			axial_points int INF
			user_table array-1 none 2 3
				array-1 double 2 0
0
0
				array-1 double 2 0
0
0
				double 0
				int 2
				int 2
				DEF
			type_results int 1
			0_bits int 768
		..
		_C_ "AcousticsPipe" "acoustics" V1
			0_type string "class"
			massflow_mach int 0
			machNumber double 0 "dimensionless~no"
			massflow double 0 "massflow~kg_s"
			hornSegments int 7
			lossesType int 0
			resistance double 0.01 "ac_impedance~kg_m4s"
			end_correction int 1
			0_bits int 256
		..
		_C_ "AbsorptiveMaterial" "absorptiveMaterial" V1
			0_type string "class"
			flowResistivity double 100000 "fl_resist~Ns_m4"
			materialPorosity double 0 "dimensionless~no"
			0_bits int 256
		..
	..
..
__
ENDSECTION
SECTION BLOCK
_C_ "noname" "noname" V1
	_C_ "Domain" "base_variables" V1
		0_local int 1
		asebox_width array-1 none 4 0
			int -1
			int -1
			int -1
			int -1
			DEF
		_C_ "Variable" "_UNITS_CYCLES_PER_REV" V1
			var_type string "local"
			var_enabled int 1
			var_value string "0.5"
			var_unit string "dimensionless~one"
			var_hidden int 1
			var_variant int 0
		..
		_C_ "Variable" "_UNITS_CYCLES_PER_SEC" V1
			var_type string "local"
			var_enabled int 1
			var_value string "41.666666666667"
			var_unit string "dimensionless~one"
			var_hidden int 1
			var_variant int 0
		..
		_C_ "Variable" "_UNITS_DEGCRANK_PER_DEGCAM" V1
			var_type string "local"
			var_enabled int 1
			var_value string "1.0"
			var_unit string "dimensionless~one"
			var_hidden int 1
			var_variant int 0
		..
		_C_ "Variable" "_UNITS_SPEED" V1
			var_type string "local"
			var_enabled int 1
			var_value string "1.0"
			var_unit string "dimensionless~one"
			var_hidden int 1
			var_variant int 0
		..
		_C_ "Variable" "_UNITS_SPEED1" V1
			var_type string "local"
			var_enabled int 1
			var_value string "5000"
			var_unit string "dimensionless~one"
			var_hidden int 1
			var_variant int 0
		..
		_C_ "Variable" "_UNITS_SPEED2" V1
			var_type string "local"
			var_enabled int 1
			var_value string "1.0"
			var_unit string "dimensionless~one"
			var_hidden int 1
			var_variant int 0
		..
		_C_ "Variable" "_UNITS_SPEED3" V1
			var_type string "local"
			var_enabled int 1
			var_value string "1.0"
			var_unit string "dimensionless~one"
			var_hidden int 1
			var_variant int 0
		..
	..
..
ENDSECTION
SECTION AUCI_MODELS_COPY
<?xml version="1.0" encoding="utf-8"?>
<act model_version="v2018.0" version="2.115.24">
<object type="boost_auci_params.AuciParams" id="1">
<dict id="2">
<str>container</str>
<dict id="3"/>
</dict>
</object>
</act>
ENDSECTION
