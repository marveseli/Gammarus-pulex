function [par, metaPar, txtPar] = pars_init_Gammarus_pulex(metaData)

metaPar.model = 'abj'; 

%% reference parameter (not to be changed) 
par.T_ref = 293.15;   free.T_ref = 0;   units.T_ref = 'K';        label.T_ref = 'Reference temperature'; 

%% core primary parameters 
par.T_A = 10000;      free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'Arrhenius temperature'; 
par.z = 0.1114;       free.z     = 0;   units.z = '-';            label.z = 'zoom factor'; 
par.F_m = 6.5;        free.F_m   = 0;   units.F_m = 'l/d.cm^2';   label.F_m = '{F_m}, max spec searching rate'; 
par.kap_X = 0.8;      free.kap_X = 0;   units.kap_X = '-';        label.kap_X = 'digestion efficiency of food to reserve'; 
par.kap_P = 0.1;      free.kap_P = 0;   units.kap_P = '-';        label.kap_P = 'faecation efficiency of food to faeces'; 
par.v = 0.01776;      free.v     = 0;   units.v = 'cm/d';         label.v = 'energy conductance'; 
par.kap = 0.89424;    free.kap   = 0;   units.kap = '-';          label.kap = 'allocation fraction to soma'; 
par.kap_R = 0.95;     free.kap_R = 0;   units.kap_R = '-';        label.kap_R = 'reproduction efficiency'; 
par.p_M = 323.3844;   free.p_M   = 0;   units.p_M = 'J/d.cm^3';   label.p_M = '[p_M], vol-spec somatic maint'; 
par.p_T = 0;          free.p_T   = 0;   units.p_T = 'J/d.cm^2';   label.p_T = '{p_T}, surf-spec somatic maint'; 
par.k_J = 0.002;      free.k_J   = 0;   units.k_J = '1/d';        label.k_J = 'maturity maint rate coefficient'; 
par.E_G = 4452.8631;  free.E_G   = 0;   units.E_G = 'J/cm^3';     label.E_G = '[E_G], spec cost for structure'; 
par.E_Hb = 5.441e-02; free.E_Hb  = 0;   units.E_Hb = 'J';         label.E_Hb = 'maturity at birth'; 
par.E_Hj = 1.830e+00; free.E_Hj  = 0;   units.E_Hj = 'J';         label.E_Hj = 'maturity at metam'; 
par.E_Hp = 3.545e+00; free.E_Hp  = 0;   units.E_Hp = 'J';         label.E_Hp = 'maturity at puberty'; 
par.h_a = 3.032e-06;  free.h_a   = 0;   units.h_a = '1/d^2';      label.h_a = 'Weibull aging acceleration'; 
par.s_G = 0.0001;     free.s_G   = 0;   units.s_G = '-';          label.s_G = 'Gompertz stress coefficient'; 

%% other parameters 
par.del_M = 0.21918;  free.del_M = 1;   units.del_M = '-';        label.del_M = 'shape coefficient'; 
par.L2_0 = 0.5653*par.del_M;    free.L2_0 = 0;   units.L2_0 = 'cm';       label.L2_0 = 'initial structural length for tL2 data'; 
par.L3_0 = 0.6049*par.del_M;    free.L3_0 = 0;   units.L3_0 = 'cm';       label.L3_0 = 'initial structural length for tL3 data'; 
par.L4_0 = 0.62427*par.del_M;  free.L4_0 = 0;   units.L4_0 = 'cm';       label.L4_0 = 'initial structural length for tL4 data'; 
par.L5_0 = 0.40653*par.del_M;  free.L5_0 = 0;   units.L5_0 = 'cm';       label.L5_0 = 'initial structural length for tL5 data'; 
par.L6_0 = 0.45523*par.del_M;  free.L6_0 = 0;   units.L6_0 = 'cm';       label.L6_0 = 'initial structural length for tL6 data'; 
par.L7_0 = 0.48592*par.del_M;  free.L7_0 = 0;   units.L7_0 = 'cm';       label.L7_0 = 'initial structural length for tL7 data'; 
par.L8_0 = 0.64219/10;          free.L8_0 = 0;    units.L8_0 = 'cm';       label.L8_0 = 'initial structural length for tL8 data';
par.L9_0 = 0.50630/10;          free.L9_0 = 0;    units.L9_0 = 'cm';       label.L9_0 = 'initial structural length for tL9 data';
par.L10_0 = 0.53041/10;         free.L10_0 = 0;   units.L10_0 = 'cm';      label.L10_0 = 'initial structural length for tL10 data';
par.L11_0 = 0.32877/10;         free.L11_0 = 0;   units.L11_0 = 'cm';      label.L11_0 = 'initial structural length for tL11 data';
par.L12_0 = 0.32657/10;         free.L12_0 = 0;   units.L12_0 = 'cm';      label.L12_0 = 'initial structural length for tL12 data';
par.L13_0 = 0.46246/10;         free.L13_0 = 0;   units.L13_0 = 'cm';      label.L13_0 = 'initial structural length for tL13 data';
par.L14_0 = 0.46246/10;         free.L14_0 = 0;   units.L14_0 = 'cm';      label.L14_0 = 'initial structural length for tL14 data';
par.f = 1;            free.f     = 0;   units.f = '-';            label.f = 'scaled functional response for 0-var data'; 
par.t_0 = 0;          free.t_0   = 0;   units.t_0 = 'd';          label.t_0 = 'time at start development'; 
par.z_m = 0.11972;    free.z_m   = 1;   units.z_m = '-';          label.z_m = 'zoom factor for male'; 

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class); 

%% Pack output: 
txtPar.units = units; txtPar.label = label; par.free = free; 
