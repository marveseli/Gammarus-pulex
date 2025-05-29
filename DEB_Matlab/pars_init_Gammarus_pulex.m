function [par, metaPar, txtPar] = pars_init_Gammarus_pulex(metaData)

metaPar.model = 'abj'; 

%% reference parameter (not to be changed) 
par.T_ref = 293.15;   free.T_ref = 0;   units.T_ref = 'K';        label.T_ref = 'Reference temperature'; 

%% core primary parameters 
par.T_A = 10000;      free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature'; 
par.z = 0.1114;       free.z     = 1;   units.z = '-';            label.z = 'zoom factor'; 
par.F_m = 6.5;        free.F_m   = 0;   units.F_m = 'l/d.cm^2';   label.F_m = '{F_m}, max spec searching rate'; 
par.kap_X = 0.8;      free.kap_X = 0;   units.kap_X = '-';        label.kap_X = 'digestion efficiency of food to reserve'; 
par.kap_P = 0.1;      free.kap_P = 0;   units.kap_P = '-';        label.kap_P = 'faecation efficiency of food to faeces'; 
par.v = 0.01776;      free.v     = 1;   units.v = 'cm/d';         label.v = 'energy conductance'; 
par.kap = 0.89424;    free.kap   = 1;   units.kap = '-';          label.kap = 'allocation fraction to soma'; 
par.kap_R = 0.95;     free.kap_R = 0;   units.kap_R = '-';        label.kap_R = 'reproduction efficiency'; 
par.p_M = 323.3844;   free.p_M   = 1;   units.p_M = 'J/d.cm^3';   label.p_M = '[p_M], vol-spec somatic maint'; 
par.p_T = 0;          free.p_T   = 0;   units.p_T = 'J/d.cm^2';   label.p_T = '{p_T}, surf-spec somatic maint'; 
par.k_J = 0.002;      free.k_J   = 0;   units.k_J = '1/d';        label.k_J = 'maturity maint rate coefficient'; 
par.E_G = 4452.8631;  free.E_G   = 1;   units.E_G = 'J/cm^3';     label.E_G = '[E_G], spec cost for structure'; 
par.E_Hb = 5.441e-02; free.E_Hb  = 1;   units.E_Hb = 'J';         label.E_Hb = 'maturity at birth'; 
par.E_Hj = 1.830e+00; free.E_Hj  = 1;   units.E_Hj = 'J';         label.E_Hj = 'maturity at metam'; 
par.E_Hp = 3.545e+00; free.E_Hp  = 1;   units.E_Hp = 'J';         label.E_Hp = 'maturity at puberty'; 
par.h_a = 3.032e-06;  free.h_a   = 1;   units.h_a = '1/d^2';      label.h_a = 'Weibull aging acceleration'; 
par.s_G = 0.0001;     free.s_G   = 0;   units.s_G = '-';          label.s_G = 'Gompertz stress coefficient'; 

%% other parameters 
par.Lw2_0 = 0.5653;   free.Lw2_0 = 1;   units.Lw2_0 = 'cm';       label.Lw2_0 = 'initial  length for tL2 data'; 
par.Lw3_0 = 0.6049;   free.Lw3_0 = 1;   units.Lw3_0 = 'cm';       label.Lw3_0 = 'initial  length for tL3 data'; 
par.Lw4_0 = 0.62427;  free.Lw4_0 = 1;   units.Lw4_0 = 'cm';       label.Lw4_0 = 'initial  length for tL4 data'; 
par.Lw5_0 = 0.40653;  free.Lw5_0 = 1;   units.Lw5_0 = 'cm';       label.Lw5_0 = 'initial  length for tL5 data'; 
par.Lw6_0 = 0.45523;  free.Lw6_0 = 1;   units.Lw6_0 = 'cm';       label.Lw6_0 = 'initial  length for tL6 data'; 
par.Lw7_0 = 0.48592;  free.Lw7_0 = 1;   units.Lw7_0 = 'cm';       label.Lw7_0 = 'initial  length for tL7 data'; 
par.Lw8_0 = 0.64219;  free.Lw8_0 = 1;   units.Lw8_0 = 'cm';       label.Lw8_0 = 'initial  length for tL8 data';
par.Lw9_0 = 0.50630;  free.Lw9_0 = 1;   units.Lw9_0 = 'cm';       label.Lw9_0 = 'initial  length for tL9 data';
par.Lw10_0 = 0.53041;  free.Lw10_0 = 1;   units.Lw10_0 = 'cm';       label.Lw10_0 = 'initial  length for tL10 data';
par.Lw11_0 = 0.32877;  free.Lw11_0 = 1;   units.Lw11_0 = 'cm';       label.Lw11_0 = 'initial  length for tL11 data';
par.Lw12_0 = 0.32657;  free.Lw12_0 = 1;   units.Lw12_0 = 'cm';       label.Lw12_0 = 'initial  length for tL12 data';
par.Lw13_0 = 0.46246;  free.Lw13_0 = 1;   units.Lw13_0 = 'cm';       label.Lw13_0 = 'initial  length for tL13 data';
par.Lw14_0 = 0.46246;  free.Lw14_0 = 1;   units.Lw14_0 = 'cm';       label.Lw14_0 = 'initial  length for tL14 data';
par.del_M = 0.21918;  free.del_M = 1;   units.del_M = '-';        label.del_M = 'shape coefficient'; 
par.f = 1;            free.f     = 0;   units.f = '-';            label.f = 'scaled functional response for 0-var data'; 
par.t_0 = 0;          free.t_0   = 0;   units.t_0 = 'd';          label.t_0 = 'time at start development'; 
par.z_m = 0.11972;    free.z_m   = 1;   units.z_m = '-';          label.z_m = 'zoom factor for male'; 

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class); 

%% Pack output: 
txtPar.units = units; txtPar.label = label; par.free = free; 
