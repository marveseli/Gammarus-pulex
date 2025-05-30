function [data, auxData, metaData, txtData, weights] = mydata_Gammarus_pulex

%% set metaData
metaData.phylum     = 'Arthropoda'; 
metaData.class      = 'Malacostraca'; 
metaData.order      = 'Amphipoda'; 
metaData.family     = 'Gammaridae';
metaData.species    = 'Gammarus_pulex'; 
metaData.species_en = 'Freshwater shrimp'; 

metaData.ecoCode.climate = {'Cfb', 'Dfb'};
metaData.ecoCode.ecozone = {'THp'};
metaData.ecoCode.habitat = {'0iFp', '0iFl', '0iFm', '0iFc'};
metaData.ecoCode.embryo  = {'Fbf'};
metaData.ecoCode.migrate = {};
metaData.ecoCode.food    = {'biD'};
metaData.ecoCode.gender  = {'D'};
metaData.ecoCode.reprod  = {'O'};

metaData.T_typical  = C2K(13); % K, body temp
metaData.data_0     = {'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}; 
metaData.data_1     = {'t-L_T'; 't-Ww'; 'T-ab'; 'T-ap'}; 

metaData.COMPLETE = 2.5; % using criteria of LikaKear2011

metaData.author   = {'Elke Zimmer'};    
metaData.date_subm = [2011 04 05];              
metaData.email    = {'elke.zimmer@ibacon.com'};            
metaData.address  = {'Ibacon GmbH, Rossdorf, Germany'};   

metaData.author_mod_1   = {'Bas Kooijman'};    
metaData.date_mod_1 = [2013 08 21];              
metaData.email_mod_1    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_1  = {'VU University Amsterdam'};   

metaData.author_mod_2   = {'Bas Kooijman'};    
metaData.date_mod_2 = [2016 02 03];              
metaData.email_mod_2    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_2  = {'VU University Amsterdam'};   

metaData.author_mod_3   = {'Annika Mangold-Doering'};    
metaData.date_mod_3 = [2021 05 17];              
metaData.email_mod_3    = {'annika.mangold-doering@wur.nl'};            
metaData.address_mod_3  = {'Wageningen University'};   

metaData.author_mod_4   = {'Bas Kooijman'};    
metaData.date_mod_4     = [2023 03 30];              
metaData.email_mod_4    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_4  = {'VU University, Amsterdam'};   

metaData.curator     = {'Starrlight Augustine'};
metaData.email_cur   = {'starrlight@tecnico.ulisboa.pt'}; 
metaData.date_acc    = [2023 03 30];

%% set data
% zero-variate data

data.ab = 33.6;  units.ab = 'd';    label.ab = 'age at birth';             bibkey.ab = 'McCaPasc1988';   
  temp.ab = C2K(10);  units.temp.ab = 'K'; label.temp.ab = 'temperature';
data.tp = 180;   units.tp = 'd';    label.tp = 'time since birth at puberty'; bibkey.tp = 'guess';
  temp.tp = C2K(10);  units.temp.tp = 'K'; label.temp.tp = 'temperature';
  comment.tp = 'Read from tL-curve for Lp';
data.am = 470;   units.am = 'd';    label.am = 'life span';                bibkey.am = 'Zimm2011';   
  temp.am = C2K(13);  units.temp.am = 'K'; label.temp.am = 'temperature'; 

data.Lb  = 0.2;  units.Lb  = 'cm';  label.Lb  = 'total length at birth';   bibkey.Lb  = 'McCaPasc1988';
data.Lp  = 0.8;  units.Lp  = 'cm';  label.Lp  = 'total length at puberty'; bibkey.Lp  = 'McCaPasc1988';
data.Li  = 1.146;units.Li  = 'cm';  label.Li  = 'ultimate total length';   bibkey.Li  = 'McCaPasc1988';

data.Wwb = 0.135;units.Wwb = 'mg';  label.Wwb = 'wet weight at birth';     bibkey.Wwb = 'SutcCarr1981';
data.Wwp = 5;    units.Wwp = 'mg';  label.Wwp = 'wet weight at puberty';   bibkey.Wwp = 'SutcCarr1981';
data.Wwi = 51;   units.Wwi = 'mg';  label.Wwi = 'ultimate wet weight';     bibkey.Wwi = 'SutcCarr1981';

data.Ri  = 22/30;units.Ri  = '#/d'; label.Ri  = 'maximum reprod rate';     bibkey.Ri  = 'SutcCarr1981';   
  temp.Ri = C2K(13);  units.temp.Ri = 'K'; label.temp.Ri = 'temperature';
 
% uni-variate data

% time - length data
data.tL = [ ... % time since birth (d), wet weight (g)
7.82806921963  2.24083499405;
25.1401453784  3.04268161551;
47.8644855123  4.11177221179;
67.2052645916  4.00716856156;
83.9080130181  8.27561685472;
110.847467347  8.70515706318;
171.070552983  8.76491419232;
220.784527377  10.6368836829;
473.56234498   11.3038466501];
data.tL(:,2) = data.tL(:,2) ./10; % convert mm to cm
units.tL   = {'d', 'cm'};  label.tL = {'time since birth', 'length'};  
temp.tL    = C2K(13);  units.temp.tL = 'K'; label.temp.tL = 'temperature';
bibkey.tL = 'McCaPasc1988';
%
data.tL2 = [ ... % time since start (d), length (cm)
0	0.511;
0	0.575;
0	0.575;
0	0.464;
0	0.583;
0	0.565;
0	0.538;
0	0.534;
0	0.482;
0	0.575;
0	0.453;
0	0.589;
0	0.495;
0	0.597;
0	0.582;
0	0.587;
0	0.587;
0	0.622;
0	0.622;
0	0.548;
0	0.4;
0	0.504;
0	0.502;
0	0.441;
0	0.539;
0	0.552;
0	0.464;
0	0.51;
0	0.557;
0	0.506;
0	0.482;
0	0.572;
0	0.535;
0	0.569;
0	0.523;
0	0.634;
0	0.497;
0	0.599;
0	0.611;
0	0.55;
0	0.592;
0	0.56;
0	0.607;
0	0.512;
0	0.623;
0	0.452;
0	0.499;
0	0.536;
0	0.528;
0	0.592;
0	0.527;
0	0.516;
0	0.415;
0	0.698;
0	0.519;
28	0.603;
28	0.61;
28	0.648;
28	0.681;
28	0.615;
28	0.673;
28	0.453;
28	0.622;
28	0.649;
28	0.59;
28	0.632;
28	0.658;
28	0.606;
28	0.649;
28	0.617;
28	0.59;
28	0.449;
28	0.566;
28	0.589;
28	0.555;
28	0.601;
28	0.587;
28	0.59;
28	0.592;
28	0.622;
28	0.539;
28	0.562;
28	0.606;
28	0.69;
28	0.61;
28	0.548;
28	0.451;
28	0.597;
28	0.665;
28	0.788;
28	0.602;
28	0.642;
28	0.741;
28	0.607;
28	0.654;
28	0.604;
28	0.66;
28	0.521;
28	0.649;
28	0.463;
28	0.584;
28	0.661;
28	0.561];
n=size(data.tL2,1); for i=2:n; if data.tL2(i,1)<=data.tL2(i-1,1); data.tL2(i,1)=data.tL2(i-1,1)+1e-8; end;end
units.tL2   = {'d', 'cm'};  label.tL2 = {'time since start', 'length', '7 C'};  
temp.tL2    = C2K(7);  units.temp.tL2 = 'K'; label.temp.tL2 = 'temperature';
bibkey.tL2 = 'Huan2021';
comment.tL2 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time' ...
'dual measurements but not individually tracked over time'];
%
data.tL3 = [ ... % time since start (d), length (cm)
0	0.505;
0	0.503;
0	0.56;
0	0.564;
0	0.635;
0	0.672;
0	0.621;
0	0.6;
0	0.492;
0	0.555;
0	0.531;
0	0.488;
0	0.602;
0	0.534;
0	0.592;
0	0.555;
0	0.505;
0	0.495;
0	0.524;
0	0.517;
0	0.464;
0	0.571;
0	0.438;
0	0.629;
0	0.574;
0	0.647;
0	0.503;
0	0.496;
0	0.675;
0	0.614;
0	0.503;
0	0.603;
0	0.57;
0	0.524;
0	0.631;
0	0.656;
0	0.542;
0	0.695;
0	0.455;
0	0.597;
0	0.529;
0	0.832;
0	0.545;
0	0.567;
0	0.53;
0	0.561;
0	0.503;
0	0.593;
0	0.522;
0	0.558;
0	0.51;
0	0.607;
0	0.575;
0	0.499;
0	0.605;
28	0.645;
28	0.59;
28	0.756;
28	0.641;
28	0.679;
28	0.667;
28	0.573;
28	0.641;
28	0.798;
28	0.723;
28	0.659;
28	0.602;
28	0.754;
28	0.616;
28	0.583;
28	0.652;
28	0.595;
28	0.565;
28	0.654;
28	0.647;
28	0.69;
28	0.671;
28	0.633;
28	0.673;
28	0.594;
28	0.686;
28	0.585;
28	0.663;
28	0.612;
28	0.706;
28	0.587;
28	0.518;
28	0.608;
28	0.535;
28	0.604;
28	0.623;
28	0.64;
28	0.544;
28	0.694;
28	0.604;
28	0.645;
28	0.528;
28	0.79;
28	0.674;
28	0.679;
28	0.583;
28	0.578;
28	0.652;
28	0.651;
28	0.568;
28	0.662;
28	0.619;
28	0.588;
28	0.68];
n=size(data.tL3,1); for i=2:n; if data.tL3(i,1)<=data.tL3(i-1,1); data.tL3(i,1)=data.tL3(i-1,1)+1e-8; end;end
units.tL3   = {'d', 'cm'};  label.tL3 = {'time since start', 'length', '11 C'};  
temp.tL3    = C2K(11);  units.temp.tL3 = 'K'; label.temp.tL3 = 'temperature';
bibkey.tL3 = 'Huan2021'; 
comment.tL3 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time'];
%
data.tL4 = [ ... % time since start (d), length (cm)
0	0.776;
0	0.597;
0	0.596;
0	0.678;
0	0.658;
0	0.623;
0	0.684;
0	0.69;
0	0.607;
0	0.54;
0	0.572;
0	0.659;
0	0.663;
0	0.682;
0	0.618;
0	0.568;
0	0.565;
0	0.513;
0	0.516;
0	0.568;
0	0.547;
0	0.662;
0	0.534;
0	0.529;
0	0.625;
0	0.589;
0	0.524;
0	0.58;
0	0.46;
0	0.621;
0	0.486;
0	0.599;
0	0.712;
0	0.497;
0	0.578;
0	0.494;
0	0.506;
0	0.653;
0	0.401;
0	0.514;
0	0.59;
0	0.652;
0	0.689;
0	0.655;
0	0.661;
0	0.58;
0	0.55;
0	0.483;
0	0.651;
0	0.546;
0	0.551;
0	0.7;
0	0.569;
0	0.535;
0	0.615;
28	0.637;
28	0.66;
28	0.761;
28	0.677;
28	0.781;
28	0.711;
28	0.794;
28	0.604;
28	0.707;
28	0.66;
28	0.794;
28	0.509;
28	0.682;
28	0.553;
28	0.781;
28	0.716;
28	0.477;
28	0.597;
28	0.659;
28	0.667;
28	0.653;
28	0.699;
28	0.58;
28	0.659;
28	0.638;
28	0.629;
28	0.751;
28	0.672;
28	0.646;
28	0.615;
28	0.677;
28	0.708;
28	0.735;
28	0.485;
28	0.633;
28	0.605;
28	0.674;
28	0.577;
28	0.558;
28	0.716;
28	0.593;
28	0.517;
28	0.555;
28	0.716];
n=size(data.tL4,1); for i=2:n; if data.tL4(i,1)<=data.tL4(i-1,1); data.tL4(i,1)=data.tL4(i-1,1)+1e-8; end;end
units.tL4   = {'d', 'cm'};  label.tL4 = {'time since start', 'length', '4 C'};  
temp.tL4    = C2K(15);  units.temp.tL4 = 'K'; label.temp.tL4 = 'temperature';
bibkey.tL4 = 'Huan2021';
comment.tL4 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time'];
%
data.tL5 = [ ... % time since start (d), length (cm)
0	0.464;
0	0.456;
0	0.387;
0	0.326;
0	0.366;
0	0.392;
0	0.295;
0	0.447;
0	0.335;
0	0.416;
0	0.292;
0	0.4;
0	0.31;
0	0.398;
0	0.404;
0	0.343;
0	0.323;
0	0.434;
0	0.271;
0	0.388;
0	0.348;
0	0.35;
0	0.425;
0	0.424;
0	0.436;
0	0.379;
0	0.369;
0	0.475;
0	0.432;
0	0.42;
0	0.377;
0	0.404;
0	0.387;
0	0.36;
0	0.309;
0	0.355;
0	0.402;
0	0.381;
0	0.379;
0	0.427;
0	0.458;
0	0.486;
0	0.356;
0	0.319;
0	0.319;
0	0.411;
0	0.439;
0	0.44;
0	0.486;
0	0.357;
0	0.345;
0	0.462;
0	0.369;
0	0.407;
0	0.342;
28	0.581;
28	0.505;
28	0.443;
28	0.523;
28	0.372;
28	0.46;
28	0.398;
28	0.399;
28	0.393;
28	0.433;
28	0.484;
28	0.457;
28	0.393;
28	0.42;
28	0.518;
28	0.412;
28	0.415;
28	0.367;
28	0.5;
28	0.467;
28	0.395;
28	0.424;
28	0.467;
28	0.446;
28	0.447;
28	0.483;
28	0.487;
28	0.462;
28	0.396;
28	0.425;
28	0.425;
28	0.359;
28	0.416;
28	0.385;
28	0.456;
28	0.482;
28	0.526;
28	0.439;
28	0.405;
28	0.486;
28	0.326;
28	0.513;
28	0.416;
28	0.454;
28	0.371;
28	0.52;
28	0.406;
28	0.41];
n=size(data.tL5,1); for i=2:n; if data.tL5(i,1)<=data.tL5(i-1,1); data.tL5(i,1)=data.tL5(i-1,1)+1e-8; end;end
units.tL5   = {'d', 'cm'};  label.tL5 = {'time since start', 'length', '7 C'};  
temp.tL5    = C2K(7);  units.temp.tL5 = 'K'; label.temp.tL5 = 'temperature';
bibkey.tL5 = 'Huan2021';
comment.tL5 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time'];
%
data.tL6 = [ ... % time since start (d), length (cm)
0	0.514;
0	0.474;
0	0.406;
0	0.472;
0	0.454;
0	0.376;
0	0.322;
0	0.411;
0	0.372;
0	0.425;
0	0.514;
0	0.464;
0	0.355;
0	0.543;
0	0.488;
0	0.489;
0	0.456;
0	0.394;
0	0.383;
0	0.343;
0	0.258;
0	0.408;
0	0.33;
0	0.478;
0	0.402;
0	0.534;
0	0.388;
0	0.33;
0	0.438;
0	0.501;
0	0.48;
0	0.452;
0	0.439;
0	0.495;
0	0.452;
0	0.478;
0	0.364;
0	0.374;
0	0.457;
0	0.438;
0	0.463;
0	0.358;
0	0.48;
0	0.488;
0	0.522;
0	0.578;
0	0.357;
0	0.421;
0	0.322;
0	0.502;
0	0.433;
0	0.388;
0	0.305;
0	0.383;
0	0.39;
28	0.616;
28	0.428;
28	0.548;
28	0.538;
28	0.484;
28	0.444;
28	0.5;
28	0.477;
28	0.397;
28	0.555;
28	0.54;
28	0.436;
28	0.443;
28	0.529;
28	0.415;
28	0.649;
28	0.518;
28	0.372;
28	0.477;
28	0.524;
28	0.481;
28	0.632;
28	0.555;
28	0.418;
28	0.565;
28	0.457;
28	0.428;
28	0.51;
28	0.539;
28	0.357;
28	0.53;
28	0.507;
28	0.467;
28	0.355;
28	0.481;
28	0.471;
28	0.479;
28	0.465;
28	0.476;
28	0.428;
28	0.486;
28	0.509;
28	0.539;
28	0.448;
28	0.542;
28	0.434;
28	0.466;
28	0.569;
28	0.36;
28	0.465;
28	0.487;
28	0.577;
28	0.497;
28	0.373];
n=size(data.tL6,1); for i=2:n; if data.tL6(i,1)<=data.tL6(i-1,1); data.tL6(i,1)=data.tL6(i-1,1)+1e-8; end;end
units.tL6   = {'d', 'cm'};  label.tL6 = {'time since start', 'length', '11 C'};  
temp.tL6    = C2K(11);  units.temp.tL6 = 'K'; label.temp.tL6 = 'temperature';
bibkey.tL6 = 'Huan2021';
comment.tL6 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time'];
%
data.tL7 = [ ... % time since start (d), length (cm)
0	0.443;
0	0.509;
0	0.587;
0	0.447;
0	0.475;
0	0.357;
0	0.481;
0	0.461;
0	0.542;
0	0.316;
0	0.47;
0	0.421;
0	0.485;
0	0.397;
0	0.424;
0	0.405;
0	0.549;
0	0.525;
0	0.434;
0	0.322;
0	0.285;
0	0.561;
0	0.509;
0	0.404;
0	0.256;
0	0.337;
0	0.35;
0	0.392;
0	0.504;
0	0.466;
0	0.504;
0	0.52;
0	0.48;
0	0.514;
0	0.545;
0	0.403;
0	0.548;
0	0.404;
0	0.551;
0	0.431;
0	0.55;
0	0.309;
0	0.286;
0	0.398;
0	0.352;
0	0.552;
0	0.438;
0	0.516;
0	0.435;
0	0.52;
0	0.458;
0	0.406;
0	0.484;
0	0.57;
0	0.44;
28	0.697;
28	0.572;
28	0.578;
28	0.641;
28	0.455;
28	0.631;
28	0.584;
28	0.606;
28	0.524;
28	0.545;
28	0.582;
28	0.512;
28	0.486;
28	0.555;
28	0.623;
28	0.626;
28	0.441;
28	0.378;
28	0.476;
28	0.568;
28	0.536;
28	0.408;
28	0.543;
28	0.617;
28	0.575;
28	0.469;
28	0.533;
28	0.528;
28	0.5;
28	0.528;
28	0.641;
28	0.399;
28	0.574;
28	0.63;
28	0.633;
28	0.555;
28	0.495;
28	0.612;
28	0.548;
28	0.452;
28	0.466;
28	0.588;
28	0.505;
28	0.532;
28	0.572;
28	0.554;
28	0.449;
28	0.621;
28	0.527];
n=size(data.tL7,1); for i=2:n; if data.tL7(i,1)<=data.tL7(i-1,1); data.tL7(i,1)=data.tL7(i-1,1)+1e-8; end;end
units.tL7   = {'d', 'cm'};  label.tL7 = {'time since start', 'length', '15 C'};  
temp.tL7    = C2K(15);  units.temp.tL7 = 'K'; label.temp.tL7 = 'temperature';
bibkey.tL7 = 'Huan2021';
comment.tL7 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time'];

% time - weight data
data.tW_f = [ ... % time since birth (d), wet weight (mg)
	30.91	0.99;
	38.61	0.76;
	46.89	1.1;
	62.88	2.11;
	80.01	3.07;
	90.01	4.26;
	104.29	6.02;
	113.71	6.52;
	126.85	8;
	141.13	9.24;
	154.85	11.4;
	170.29	14.92;
	180.58	17.02;
	191.45	19.8;
	208.61	24.29;
	219.17	24.63;
	230.06	29.81;
	239.2	30.37;
	247.21	33.16;
	254.07	34.58;
	268.36	36.28;	
	282.06	36.55;
	307.18	38.02;
	315.47	39.83;
	328.62	42.62;
	335.19	42.9;
	342.62	43.98;
	350.06	46.82;
	356.9	45.22;
	363.2	47.95;	
	373.76	47.37;
	379.48	49.31;
	383.77	50.27;
	391.19	50.84;
	398.04	50.83;
	412.88	51.16;
	419.16	51.05;
	434.57	51.15;
	439.42	51.09;
	447.13	51.31];
units.tW_f   = {'d', 'mg'};  label.tW_f = {'time since birth', 'wet weight', 'female'};  
temp.tW_f    = C2K(15);  units.temp.tW_f = 'K'; label.temp.tW_f = 'temperature';
bibkey.tW_f = 'SutcCarr1981';
%
data.tW_m = [ ... % time since birth (d), wet weight (mg)
	30.91 0.99;
	38.61	0.76;
	46.89	1.10;
	62.88	2.11;	
	78.88	4.38;
	90.31	6.48;
	104.61	10.35;
	114.62	12.68;
	127.77	15.52;
	143.23	20.86;
	155.27	27.35;	
	170.26	33.15;	
	181.75	35.43;
	192.58	39.87;
	209.49	44.98;
	220.34	51.84;
	230.48	54.39;
	239.95	57.89;
	248.05	58.55;
	254.12	59.22;
	268.99	62.31;
	283.16	63.24;
	292.60	61.89;
	308.14	65.25;
	315.56	65.11;
	329.72	64.42;
	336.48	66.98;
	349.96	64.68;
	357.39	66.29;
	364.12	64.81];
units.tW_m   = {'d', 'mg'};  label.tW_m = {'time since birth', 'wet weight', 'male'};  
temp.tW_m    = C2K(15);  units.temp.tW_m = 'K'; label.temp.tW_m = 'temperature';
bibkey.tW_m = 'SutcCarr1981';

data.Tab = [ ... % time since birth (d), wet weight (mg)
	1  110.5;
	5  59.3;
	10 33.6;
	15 20.6];
units.Tab   = {'C', 'd'};  label.Tab = {'temperature', 'age at birth'};  
bibkey.Tab = 'Nils1977';

data.Tab2 = [ ... % time since birth (d), wet weight (mg)
	5  70;
	10 35;
	15 28;
	20 21];
units.Tab2   = {'C', 'd'};  label.Tab2 = {'temperature', 'age at birth'};  
bibkey.Tab2 = 'Sutcliffe1993';

data.Ttp = [ ... % time since birth (d), wet weight (mg)
	5  364;
	10 154;
	15 119;
	20 77];
units.Ttp   = {'C', 'd'};  label.Ttp = {'temperature', 'time since birth at puberty'};  
bibkey.Ttp = 'Sutcliffe1993';

data.tL8 = [ ... % time since start (d), length (mm)
	58	2.93;
	90	3.31;
	90	3.62;
	90	3.98;
	90	4.6;
	90	4.83;
	144	6.03;
	144	6.34;
	144	7.24;
	182	5.4;
	182	7.2;
	182	7.51;
	182	8.09;
	220	10.15;
	221	8.52;
	221	8.13;
	245	9.68;
	244	9.06;
	245	8.67
];
data.tL8(:, 1) = data.tL8(:, 1)/10; % convert to cm
n=size(data.tL8,1); for i=2:n; if data.tL8(i,1)<=data.tL8(i-1,1); data.tL8(i,1)=data.tL8(i-1,1)+1e-8; end;end
units.tL8   = {'d', 'cm'};  label.tL8 = {'time since start', 'length', '11 C'};  
temp.tL8    = C2K(11);  units.temp.tL8 = 'K'; label.temp.tL8 = 'temperature';
bibkey.tL8 = 'Huang2024';
comment.tL8 =  ['Control group of chronic toxicity test (imidacloprid).'];
%
data.tL9 = [ ... % time since start (d), length (mm)
	7	2.31;
	24	3.09;
	47	4.14;
	67	4.06;
	57	4.64;
	83	8.3;
	111	8.73;
	113	6.74;
	144	6.81;
	171	8.76;
	221	10.66;
	473	11.25
];
data.tL9(:, 1) = data.tL9(:, 1)/10; % convert to cm
n=size(data.tL9,1); for i=2:n; if data.tL9(i,1)<=data.tL9(i-1,1); data.tL9(i,1)=data.tL9(i-1,1)+1e-8; end;end
units.tL9   = {'d', 'cm'};  label.tL9 = {'time since start', 'length', '13 C'};  
temp.tL9    = C2K(13);  units.temp.tL9 = 'K'; label.temp.tL9 = 'temperature';
bibkey.tL9 = 'Huang2024';
comment.tL9 =  ['Control group of chronic toxicity test (imidacloprid).'];
%
data.tL10 = [ ... % time since start (d), length (mm)
	29	2.42;
	57	3.78;
	57	4.14;
	57	4.49;
	85	4.25;
	85	5.26;
	85	6.2;
	85	6.7;
	114	6.66;
	114	8.34;
	143	6.73;
	143	8.02;
	143	8.29;
	143	8.96;
	176	6.61;
	176	7.51;
	176	8.44;
	176	9.65;
	199	8.79;
	199	8.99
];
data.tL10(:, 1) = data.tL10(:, 1)/10; % convert to cm
n=size(data.tL10,1); for i=2:n; if data.tL10(i,1)<=data.tL10(i-1,1); data.tL10(i,1)=data.tL10(i-1,1)+1e-8; end;end
units.tL10   = {'d', 'cm'};  label.tL10 = {'time since start', 'length', '15 C'};  
temp.tL10    = C2K(15);  units.temp.tL10 = 'K'; label.temp.tL10 = 'temperature';
bibkey.tL10 = 'Huang2024';
comment.tL10 =  ['Control group of chronic toxicity test (imidacloprid).'];
%
data.tL11 = [ ... % time since start (d), length (cm)
	20 1.5;
	28 1.52;
	22 1.93;
	31 1.98;
	42 1.98;
	42 2.12;
	41 2.49;
	29 2.48;
	41 3.42;
	62 3.02;
	69 2.01;
	81 1.98;
	92 1.98;
	106 2.01;
	113 2.01;
	108 1.48;
	108 2.18;
	113 2.44;
	106 2.44;
	103 2.56;
	94 2.56;
	93 3.0;
	102 3.02;
	109 3.02;
	108 3.5;
	101 3.53;
	89 3.55;
	81 4.03;
	107 4.03;
	132 4.01;
	130 5.02;
	160 4.54;
	158 4.04;
	186 4.04;
	272 5.54;
	271 5.06;
	272 4.82;
	270 4.53;
	294 7.06;
	293 5.57;
	293 5.06;
	294 4.48;
	334 6.34;
	334 6.07;
	334 5.81;
	334 5.33;
	334 5.06;
	333 4.56;
	354 6.32;
	348 6.08;
	354 5.31;
	349 5.23;
	346 4.8;
	354 4.8;
	348 4.56;
	346 4.32;
	346 4.03;
	394 5.55;
	424 5.29;
	442 5.58;
	443 5.84;
	443 6.11;
	444 6.32;
	443 6.81;
	444 7.34
];
data.tL11(:, 1) = data.tL11(:, 1)/10; % convert to cm
n=size(data.tL11,1); for i=2:n; if data.tL11(i,1)<=data.tL11(i-1,1); data.tL11(i,1)=data.tL11(i-1,1)+1e-8; end;end
units.tL11   = {'d', 'cm'};  label.tL11 = {'time since start', 'length', '5 C'};  
temp.tL11    = C2K(5);  units.temp.tL11 = 'K'; label.temp.tL11 = 'temperature';
bibkey.tL11 = 'WeltClak1980';
comment.tL11 =  [''];
%
data.tL12 = [ ... % time since start (d), length (cm)
	15 1.49;
	14 2.05;
	24 2.0;
	23 2.51;
	20 3.0;
	23 3.0;
	29 3.0;
	33 2.79;
	32 2.54;
	29 2.54;
	32 2.26;
	23 3.52;
	28 3.49;
	32 3.49;
	31 4.01;
	23 4.03;
	24 4.54;
	42 2.0;
	52 2.0;
	42 2.54;
	49 2.54;
	55 2.49;
	59 2.51;
	60 3.0;
	53 3.0;
	50 3.0;
	51 3.52;
	55 3.52;
	59 3.61;
	59 4.01;
	56 4.01;
	52 4.01;
	52 4.54;
	60 4.54;
	66 4.54;
	59 5.03;
	72 6.01;
	77 6.01;
	73 5.03;
	66 3.49;
	71 3.0;
	79 2.51;
	94 2.54;
	94 3.0;
	86 3.49;
	91 3.49;
	97 3.52;
	98 3.75;
	96 4.03;
	92 4.03;
	89 4.03;
	85 5.03;
	96 7.01;
	99 7.01;
	98 8.04;
	99 6.03;
	104 6.01;
	98 5.55;
	101 5.55;
	106 5.55;
	95 5.03;
	98 5.03;
	101 5.03;
	104 5.03;
	110 5.03;
	107 4.54;
	109 3.98;
	113 4.01;
	109 3.56;
	110 3.0;
	118 3.0;
	148 3.47;
	161 4.01;
	135 3.98;
	133 3.98;
	125 4.52;
	131 4.54;
	117 6.01;
	123 6.01;
	132 6.01;
	126 5.52;
	107 7.01;
	116 7.01;
	121 7.5;
	126 7.01;
	131 7.01;
	141 7.01;
	141 5.52;
	149 5.01;
	155 4.99;
	158 5.01;
	148 6.01;
	155 6.01;
	158 6.01;
	127 8.02;
	139 8.02;
	149 8.02;
	154 9.04;
	157 9.04;
	162 8.02;
	178 9.04;
	178 8.02;
	156 7.01;
	170 7.01;
	187 5.99
];
n=size(data.tL12,1); for i=2:n; if data.tL12(i,1)<=data.tL12(i-1,1); data.tL12(i,1)=data.tL12(i-1,1)+1e-8; end;end
units.tL12   = {'d', 'cm'};  label.tL12 = {'time since start', 'length', '10 C'};  
temp.tL12    = C2K(10);  units.temp.tL12 = 'K'; label.temp.tL12 = 'temperature';
bibkey.tL12 = 'WeltClak1980';
comment.tL12 =  [''];
%
data.tL13 = [ ... % time since start (d), length (cm)
	17	2.11;
	27	2.09;
	31	2.11;
	27	2.62;
	31	2.62;
	26	3.12;
	30	3.14;
	27	3.52;
	27	3.7;
	30	3.65;
	35	3.61;
	26	4.12;
	34	4.12;
	35	4.61;
	45	4.65;
	56	5.19;
	54	4.61;
	52	4.12;
	40	3.14;
	53	3.38;
	51	3.14;
	54	3.12;
	59	3.38;
	59	3.12;
	63	3.12;
	59	2.91;
	84	8.13;
	84	6.13;
	91	5.17;
	106	4.14;
	106	3.63;
	106	3.36;
	113	9.14;
	120	7.11;
	122	6.13;
	120	4.65;
	121	4.9;
	133	5.41;
	152	5.64;
	151	8.13;
	172	9.7;
	171	7.15
];
data.tL13(:, 1) = data.tL13(:, 1)/10; % convert to cm
n=size(data.tL13,1); for i=2:n; if data.tL13(i,1)<=data.tL13(i-1,1); data.tL13(i,1)=data.tL13(i-1,1)+1e-8; end;end
units.tL13   = {'d', 'cm'};  label.tL13 = {'time since start', 'length', '15 C'};  
temp.tL13    = C2K(15);  units.temp.tL13 = 'K'; label.temp.tL13 = 'temperature';
bibkey.tL13 = 'WeltClak1980';
comment.tL13 =  [''];
%
data.tL14 = [ ... % time since start (d), length (cm)
	12	2.11;
	12	3.62;
	33	2.13;
	26	2.64;
	30	2.64;
	32	2.64;
	32	2.92;
	23	3.29;
	26	3.18;
	32	3.13;
	33	3.38;
	25	3.64;
	21	3.88;
	26	4.15;
	26	4.64;
	31	4.66;
	33	4.15;
	40	4.15;
	40	3.15;
	39	3.64;
	45	3.64;
	49	3.64;
	54	4.15;
	47	4.66;
	53	4.7;
	58	4.61;
	62	4.65;
	48	5.17;
	53	5.68;
	58	5.68;
	61	5.68;
	61	5.17;
	60	6.14;
	47	7.19;
	54	7.19;
	71	8.21;
	93	7.18;
	92	6.74;
	83	6.18;
	89	6.18;
	102	6.2;
	93	5.16;
	140	7.72
];
data.tL14(:, 1) = data.tL14(:, 1)/10; % convert to cm
n=size(data.tL14,1); for i=2:n; if data.tL14(i,1)<=data.tL14(i-1,1); data.tL14(i,1)=data.tL14(i-1,1)+1e-8; end;end
units.tL14   = {'d', 'cm'};  label.tL14 = {'time since start', 'length', '20 C'};  
temp.tL14    = C2K(20);  units.temp.tL14 = 'K'; label.temp.tL14 = 'temperature';
bibkey.tL14 = 'WeltClak1980';
comment.tL14 =  [''];
%% set weights for all real data
weights = setweights(data, []);

%% set pseudodata and respective weights
[data, units, label, weights] = addpseudodata(data, units, label, weights);

%% pack auxData and txtData for output
auxData.temp = temp;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;

%% Group plots
set1 = {'tL4','tL3','tL2'}; subtitle1 = {'Data for 15, 11, 7 C'};
set2 = {'tL7','tL6','tL5'}; subtitle2 = {'Data for 15, 11, 7 C'};
set3 = {'tW_f','tW_m'}; subtitle3 = {'Data for female, male'};
metaData.grp.sets = {set1,set2,set3};
metaData.grp.subtitle = {subtitle1,subtitle2,subtitle3};

%% Discussion points
D1 = 'Males are assumed to differ from females by {p_Am} only';
D2 = 'mod 3: tL data added for different temperatures';
D3 = 'mod_4: males have equal state variables at b, compared to females';
metaData.discussion = struct('D1',D1, 'D2',D2, 'D3',D3);

%% Links
metaData.links.id_CoL = '3F8JD'; % Cat of Life
metaData.links.id_ITIS = '206451'; % ITIS
metaData.links.id_EoL = '344717'; % Ency of Life
metaData.links.id_Wiki = 'Gammarus_pulex'; % Wikipedia
metaData.links.id_ADW = 'Gammarus_pulex'; % ADW
metaData.links.id_Taxo = '34297'; % Taxonomicon
metaData.links.id_WoRMS = '234074'; % WoRMS

%% References
bibkey = 'Wiki'; type = 'Misc'; bib = ...
'howpublished = {\url{http://en.wikipedia.org/wiki/Gammarus_pulex}}';
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Kooy2010'; type = 'Book'; bib = [ ...  % used in setting of chemical parameters and pseudodata
'author = {Kooijman, S.A.L.M.}, ' ...
'year = {2010}, ' ...
'title  = {Dynamic Energy Budget theory for metabolic organisation}, ' ...
'publisher = {Cambridge Univ. Press, Cambridge}, ' ...
'pages = {Table 4.2 (page 150), 8.1 (page 300)}, ' ...
'howpublished = {\url{../../../bib/Kooy2010.html}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'McCaPasc1988'; type = 'Article'; bib = [ ... 
'author = {McCahon, C. P. and Pascoe, D}, ' ... 
'year = {1988}, ' ...
'title = {Cadmium toxicity to the freshwater amphipod \emph{Gammarus pulex} ({L}.) during the moult cycle}, ' ...
'journal = {Freshwater Biology}, ' ...
'doi = {10.1111/j.1365-2427.1988.tb00342.x}, ' ...
'volume = {19}, ' ...
'pages = {197--203}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'SutcCarr1981'; type = 'Article'; bib = [ ... 
'author = {Sutcliffe, D. W. and Carrick, T. R. and Willoughby, L. G.}, ' ... 
'year = {1981}, ' ...
'title = {Effects of diet, body size, age and temperature on growth rates in the amphipod \emph{Gammarus pulex}}, ' ...
'journal = {Freshwater Biology}, ' ...
'doi = {10.1111/j.1365-2427.1981.tb01252.x}, ' ...
'volume = {11}, ' ...
'pages = {183--214}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Nils1977'; type = 'Article'; bib = [ ... 
'author = {Nilsson, L. M.}, ' ... 
'year = {1977}, ' ...
'title = {Incubation Time, Growth and Mortality of the Amphipod \emph{Gammarus pulex} under Laboratory Conditions}, ' ...
'journal = {Oikos}, ' ...
'volume = {29}, ' ...
'pages = {93--98}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Zimm2011'; type = 'Misc'; bib = [ ... 
'author = {Zimmer, E.}, ' ... 
'note = {pers. comm. Alpar Barsi/Julita}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Huan2021'; type = 'misc'; bib = [ ... 
'author = {Anna Huang}, ' ... 
'title = {Chronic toxicity of flupyradifurone and imidacloprid to \emph{Gammarus pulex} at different temperatures}, ' ...
'note = {unpublished data; Only control data used for the entries}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Sutc1993'; type = 'misc'; bib = [ ... 
'author = {David W Sutcliff}, ' ... 
'title = {REPRODUCTION IN GAMMARUS (CRUSTACEA, AMPHIPODA): BASIC PROCESSES}, ' ...
'note = {}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Huan2024'; type = 'misc'; bib = [ ... 
'author = {Anna Huang}, {Paul J. Van den Brink}, {Nico W. Van den Brink}, {Jan Baas} ' ... 
'title = {A dynamic energy budget (DEB) model to assess the sublethal effects of imidacloprid toward Gammarus pulex at different temperatures}, ' ...
'note = {only control data used for the entries}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
bibkey = 'WeltClar1980'; type = 'misc'; bib = [ ... 
'author = {J. S. Welton}, {R. T. Clarke}, ' ... 
'title = {Laboratory Studies on the Reproduction and Growth of the Amphipod, Gammarus pulex (L.)}, ' ...
'note = {}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];




