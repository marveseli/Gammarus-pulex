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
units.tL   = {'d', 'cm'};  label.tL = {'time since birth', 'length McCaPasc1988'};  
temp.tL    = C2K(13);  units.temp.tL = 'K'; label.temp.tL = 'temperature';
bibkey.tL = 'McCaPasc1988';
%
data.tL2 = [ ... % time since start (d), length (cm)
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.511	0.575	0.575	0.464	0.583	0.565	0.538	0.534	0.482	0.575	0.453	0.589	0.495	0.597	0.582	0.587	0.587	0.622	0.622	0.548	0.4	0.504	0.502	0.441	0.539	0.552	0.464	0.51	0.557	0.506	0.482	0.572	0.535	0.569	0.523	0.634	0.497	0.599	0.611	0.55	0.592	0.56	0.607	0.512	0.623	0.452	0.499	0.536	0.528	0.592	0.527	0.516	0.415	0.698	0.519	0.603	0.61	0.648	0.681	0.615	0.673	0.453	0.622	0.649	0.59	0.632	0.658	0.606	0.649	0.617	0.59	0.449	0.566	0.589	0.555	0.601	0.587	0.59	0.592	0.622	0.539	0.562	0.606	0.69	0.61	0.548	0.451	0.597	0.665	0.788	0.602	0.642	0.741	0.607	0.654	0.604	0.66	0.521	0.649	0.463	0.584	0.661	0.561
]';
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
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.505	0.503	0.56	0.564	0.635	0.672	0.621	0.6	0.492	0.555	0.531	0.488	0.602	0.534	0.592	0.555	0.505	0.495	0.524	0.517	0.464	0.571	0.438	0.629	0.574	0.647	0.503	0.496	0.675	0.614	0.503	0.603	0.57	0.524	0.631	0.656	0.542	0.695	0.455	0.597	0.529	0.832	0.545	0.567	0.53	0.561	0.503	0.593	0.522	0.558	0.51	0.607	0.575	0.499	0.605	0.645	0.59	0.756	0.641	0.679	0.667	0.573	0.641	0.798	0.723	0.659	0.602	0.754	0.616	0.583	0.652	0.595	0.565	0.654	0.647	0.69	0.671	0.633	0.673	0.594	0.686	0.585	0.663	0.612	0.706	0.587	0.518	0.608	0.535	0.604	0.623	0.64	0.544	0.694	0.604	0.645	0.528	0.79	0.674	0.679	0.583	0.578	0.652	0.651	0.568	0.662	0.619	0.588	0.68
]';
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
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.776	0.597	0.596	0.678	0.658	0.623	0.684	0.69	0.607	0.54	0.572	0.659	0.663	0.682	0.618	0.568	0.565	0.513	0.516	0.568	0.547	0.662	0.534	0.529	0.625	0.589	0.524	0.58	0.46	0.621	0.486	0.599	0.712	0.497	0.578	0.494	0.506	0.653	0.401	0.514	0.59	0.652	0.689	0.655	0.661	0.58	0.55	0.483	0.651	0.546	0.551	0.7	0.569	0.535	0.615	0.637	0.66	0.761	0.677	0.781	0.711	0.794	0.604	0.707	0.66	0.794	0.509	0.682	0.553	0.781	0.716	0.477	0.597	0.659	0.667	0.653	0.699	0.58	0.659	0.638	0.629	0.751	0.672	0.646	0.615	0.677	0.708	0.735	0.485	0.633	0.605	0.674	0.577	0.558	0.716	0.593	0.517	0.555	0.716
]';
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
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.464	0.456	0.387	0.326	0.366	0.392	0.295	0.447	0.335	0.416	0.292	0.4	0.31	0.398	0.404	0.343	0.323	0.434	0.271	0.388	0.348	0.35	0.425	0.424	0.436	0.379	0.369	0.475	0.432	0.42	0.377	0.404	0.387	0.36	0.309	0.355	0.402	0.381	0.379	0.427	0.458	0.486	0.356	0.319	0.319	0.411	0.439	0.44	0.486	0.357	0.345	0.462	0.369	0.407	0.342	0.581	0.505	0.443	0.523	0.372	0.46	0.398	0.399	0.393	0.433	0.484	0.457	0.393	0.42	0.518	0.412	0.415	0.367	0.5	0.467	0.395	0.424	0.467	0.446	0.447	0.483	0.487	0.462	0.396	0.425	0.425	0.359	0.416	0.385	0.456	0.482	0.526	0.439	0.405	0.486	0.326	0.513	0.416	0.454	0.371	0.52	0.406	0.41
]';
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
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.514	0.474	0.406	0.472	0.454	0.376	0.322	0.411	0.372	0.425	0.514	0.464	0.355	0.543	0.488	0.489	0.456	0.394	0.383	0.343	0.258	0.408	0.33	0.478	0.402	0.534	0.388	0.33	0.438	0.501	0.48	0.452	0.439	0.495	0.452	0.478	0.364	0.374	0.457	0.438	0.463	0.358	0.48	0.488	0.522	0.578	0.357	0.421	0.322	0.502	0.433	0.388	0.305	0.383	0.39	0.616	0.428	0.548	0.538	0.484	0.444	0.5	0.477	0.397	0.555	0.54	0.436	0.443	0.529	0.415	0.649	0.518	0.372	0.477	0.524	0.481	0.632	0.555	0.418	0.565	0.457	0.428	0.51	0.539	0.357	0.53	0.507	0.467	0.355	0.481	0.471	0.479	0.465	0.476	0.428	0.486	0.509	0.539	0.448	0.542	0.434	0.466	0.569	0.36	0.465	0.487	0.577	0.497	0.373
]';
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
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.443	0.509	0.587	0.447	0.475	0.357	0.481	0.461	0.542	0.316	0.47	0.421	0.485	0.397	0.424	0.405	0.549	0.525	0.434	0.322	0.285	0.561	0.509	0.404	0.256	0.337	0.35	0.392	0.504	0.466	0.504	0.52	0.48	0.514	0.545	0.403	0.548	0.404	0.551	0.431	0.55	0.309	0.286	0.398	0.352	0.552	0.438	0.516	0.435	0.52	0.458	0.406	0.484	0.57	0.44	0.697	0.572	0.578	0.641	0.455	0.631	0.584	0.606	0.524	0.545	0.582	0.512	0.486	0.555	0.623	0.626	0.441	0.378	0.476	0.568	0.536	0.408	0.543	0.617	0.575	0.469	0.533	0.528	0.5	0.528	0.641	0.399	0.574	0.63	0.633	0.555	0.495	0.612	0.548	0.452	0.466	0.588	0.505	0.532	0.572	0.554	0.449	0.621	0.527
]';
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
30.91	38.61	46.89	62.88	80.01	90.01	104.29	113.71	126.85	141.13	154.85	170.29	180.58	191.45	208.61	219.17	230.06	239.2	247.21	254.07	268.36	282.06	307.18	315.47	328.62	335.19	342.62	350.06	356.9	363.2	373.76	379.48	383.77	391.19	398.04	412.88	419.16	434.57	439.42	447.13
0.99	0.76	1.1	2.11	3.07	4.26	6.02	6.52	8	9.24	11.4	14.92	17.02	19.8	24.29	24.63	29.81	30.37	33.16	34.58	36.28	36.55	38.02	39.83	42.62	42.9	43.98	46.82	45.22	47.95	47.37	49.31	50.27	50.84	50.83	51.16	51.05	51.15	51.09	51.31
]';
units.tW_f   = {'d', 'mg'};  label.tW_f = {'time since birth', 'wet weight', 'female'};  
temp.tW_f    = C2K(15);  units.temp.tW_f = 'K'; label.temp.tW_f = 'temperature';
bibkey.tW_f = 'SutcCarr1981';
%
data.tW_m = [ ... % time since birth (d), wet weight (mg)
30.91	38.61	46.89	62.88	78.88	90.31	104.61	114.62	127.77	143.23	155.27	170.26	181.75	192.58	209.49	220.34	230.48	239.95	248.05	254.12	268.99	283.16	292.6	308.14	315.56	329.72	336.48	349.96	357.39	364.12
0.99	0.76	1.1	2.11	4.38	6.48	10.35	12.68	15.52	20.86	27.35	33.15	35.43	39.87	44.98	51.84	54.39	57.89	58.55	59.22	62.31	63.24	61.89	65.25	65.11	64.42	66.98	64.68	66.29	64.81
]';
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
bibkey.Tab2 = 'Sutc1993';

data.Ttp = [ ... % time since birth (d), wet weight (mg)
	5  364;
	10 154;
	15 119;
	20 77];
units.Ttp   = {'C', 'd'};  label.Ttp = {'temperature', 'time since birth at puberty'};  
bibkey.Ttp = 'Sutc1993';

data.tL8 = [ ... % time since start (d), length (mm)
58	90	90	90	90	90	144	144	144	182	182	182	182	220	221	221	245	244	245
2.93	3.31	3.62	3.98	4.6	4.83	6.03	6.34	7.24	5.4	7.2	7.51	8.09	10.15	8.52	8.13	9.68	9.06	8.67
]';
data.tL8(:, 2) = data.tL8(:, 2) ./10; % convert to cm
n=size(data.tL8,1); for i=2:n; if data.tL8(i,1)<=data.tL8(i-1,1); data.tL8(i,1)=data.tL8(i-1,1)+1e-8; end;end
units.tL8   = {'d', 'cm'};  label.tL8 = {'time since start', 'length', '11 C'};  
temp.tL8    = C2K(11);  units.temp.tL8 = 'K'; label.temp.tL8 = 'temperature';
bibkey.tL8 = 'Huan2024';
comment.tL8 =  ['Control group of chronic toxicity test (imidacloprid).'];
%
data.tL9 = [ ... % time since start (d), length (mm)
7	24	47	67	57	83	111	113	144	171	221	473
2.31	3.09	4.14	4.06	4.64	8.3	8.73	6.74	6.81	8.76	10.66	11.25
]';
data.tL9(:, 2) = data.tL9(:, 2) ./10; % convert to cm
n=size(data.tL9,1); for i=2:n; if data.tL9(i,1)<=data.tL9(i-1,1); data.tL9(i,1)=data.tL9(i-1,1)+1e-8; end;end
units.tL9   = {'d', 'cm'};  label.tL9 = {'time since start', 'length', '13 C'};  
temp.tL9    = C2K(13);  units.temp.tL9 = 'K'; label.temp.tL9 = 'temperature';
bibkey.tL9 = 'Huan2024';
comment.tL9 =  ['Control group of chronic toxicity test (imidacloprid).'];
%
data.tL10 = [ ... % time since start (d), length (mm)
29	57	57	57	85	85	85	85	114	114	143	143	143	143	176	176	176	176	199	199
2.42	3.78	4.14	4.49	4.25	5.26	6.2	6.7	6.66	8.34	6.73	8.02	8.29	8.96	6.61	7.51	8.44	9.65	8.79	8.99
]';
data.tL10(:, 2) = data.tL10(:, 2) ./10; % convert to cm
n=size(data.tL10,1); for i=2:n; if data.tL10(i,1)<=data.tL10(i-1,1); data.tL10(i,1)=data.tL10(i-1,1)+1e-8; end;end
units.tL10   = {'d', 'cm'};  label.tL10 = {'time since start', 'length', '15 C'};  
temp.tL10    = C2K(15);  units.temp.tL10 = 'K'; label.temp.tL10 = 'temperature';
bibkey.tL10 = 'Huan2024';
comment.tL10 =  ['Control group of chronic toxicity test (imidacloprid).'];
%
data.tL11 = [ ... % time since start (d), length (mm)
20	22	28	29	31	41	41	42	42	62	69	81	81	89	92	93	94	101	102	103	106	106	107	108	108	108	109	113	113	130	132	158	160	186	270	271	272	272	293	293	294	294	333	334	334	334	334	334	346	346	346	348	348	349	354	354	354	394	424	442	443	443	443	444	444
1.5	1.93	1.52	2.48	1.98	2.49	3.42	1.98	2.12	3.02	2.01	1.98	4.03	3.55	1.98	3	2.56	3.53	3.02	2.56	2.01	2.44	4.03	1.48	2.18	3.5	3.02	2.01	2.44	5.02	4.01	4.04	4.54	4.04	4.53	5.06	5.54	4.82	5.57	5.06	7.06	4.48	4.56	6.34	6.07	5.81	5.33	5.06	4.8	4.32	4.03	6.08	4.56	5.23	6.32	5.31	4.8	5.55	5.29	5.58	5.84	6.11	6.81	6.32	7.34
]';
data.tL11(:, 2) = data.tL11(:, 2) ./10; % convert to cm
n=size(data.tL11,1); for i=2:n; if data.tL11(i,1)<=data.tL11(i-1,1); data.tL11(i,1)=data.tL11(i-1,1)+1e-8; end;end
units.tL11   = {'d', 'cm'};  label.tL11 = {'time since start', 'length', '5 C'};  
temp.tL11    = C2K(5);  units.temp.tL11 = 'K'; label.temp.tL11 = 'temperature';
bibkey.tL11 = 'WeltClar1980';
comment.tL11 =  [''];
%
data.tL12 = [ ... % time since start (d), length (mm)
14	15	20	23	23	23	23	24	24	28	29	29	31	32	32	32	33	42	42	49	50	51	52	52	52	53	55	55	56	59	59	59	59	60	60	66	66	71	72	73	77	79	85	86	89	91	92	94	94	95	96	96	97	98	98	98	98	99	99	101	101	104	104	106	107	107	109	109	110	110	113	116	117	118	121	123	125	126	126	127	131	131	132	133	135	139	141	141	148	148	149	149	154	155	155	156	157	158	158	161	162	170	178	178	187
2.05	1.49	3	2.51	3	3.52	4.03	2	4.54	3.49	3	2.54	4.01	2.54	2.26	3.49	2.79	2	2.54	2.54	3	3.52	2	4.01	4.54	3	2.49	3.52	4.01	2.51	3.61	4.01	5.03	3	4.54	4.54	3.49	3	6.01	5.03	6.01	2.51	5.03	3.49	4.03	3.49	4.03	2.54	3	5.03	4.03	7.01	3.52	3.75	8.04	5.55	5.03	7.01	6.03	5.55	5.03	6.01	5.03	5.55	4.54	7.01	3.98	3.56	5.03	3	4.01	7.01	6.01	3	7.5	6.01	4.52	5.52	7.01	8.02	4.54	7.01	6.01	3.98	3.98	8.02	7.01	5.52	3.47	6.01	5.01	8.02	9.04	4.99	6.01	7.01	9.04	5.01	6.01	4.01	8.02	7.01	9.04	8.02	5.99
]';
data.tL12(:, 2) = data.tL12(:, 2) ./10; % convert to cm
n=size(data.tL12,1); for i=2:n; if data.tL12(i,1)<=data.tL12(i-1,1); data.tL12(i,1)=data.tL12(i-1,1)+1e-8; end;end
units.tL12   = {'d', 'cm'};  label.tL12 = {'time since start', 'length', '10 C'};  
temp.tL12    = C2K(10);  units.temp.tL12 = 'K'; label.temp.tL12 = 'temperature';
bibkey.tL12 = 'WeltClar1980';
comment.tL12 =  [''];
%
data.tL13 = [ ... % time since start (d), length (mm)
17	26	26	27	27	27	27	30	30	31	31	34	35	35	40	45	51	52	53	54	54	56	59	59	59	63	84	84	91	106	106	106	113	120	120	121	122	133	151	152	171	172
2.11	3.12	4.12	2.09	2.62	3.52	3.7	3.14	3.65	2.11	2.62	4.12	3.61	4.61	3.14	4.65	3.14	4.12	3.38	4.61	3.12	5.19	3.38	3.12	2.91	3.12	8.13	6.13	5.17	4.14	3.63	3.36	9.14	7.11	4.65	4.9	6.13	5.41	8.13	5.64	7.15	9.7
]';
data.tL13(:, 2) = data.tL13(:, 2) ./10; % convert to cm
n=size(data.tL13,1); for i=2:n; if data.tL13(i,1)<=data.tL13(i-1,1); data.tL13(i,1)=data.tL13(i-1,1)+1e-8; end;end
units.tL13   = {'d', 'cm'};  label.tL13 = {'time since start', 'length', '15 C'};  
temp.tL13    = C2K(15);  units.temp.tL13 = 'K'; label.temp.tL13 = 'temperature';
bibkey.tL13 = 'WeltClar1980';
comment.tL13 =  [''];
%
data.tL14 = [ ... % time since start (d), length (mm)
12	12	21	23	25	26	26	26	26	30	31	32	32	32	33	33	33	39	40	40	45	47	47	48	49	53	53	54	54	58	58	60	61	61	62	71	83	89	92	93	93	102	140
2.11	3.62	3.88	3.29	3.64	2.64	3.18	4.15	4.64	2.64	4.66	2.64	2.92	3.13	2.13	3.38	4.15	3.64	4.15	3.15	3.64	4.66	7.19	5.17	3.64	4.7	5.68	4.15	7.19	4.61	5.68	6.14	5.68	5.17	4.65	8.21	6.18	6.18	6.74	7.18	5.16	6.2	7.72
]';
data.tL14(:, 2) = data.tL14(:, 2) ./10; % convert to cm
n=size(data.tL14,1); for i=2:n; if data.tL14(i,1)<=data.tL14(i-1,1); data.tL14(i,1)=data.tL14(i-1,1)+1e-8; end;end
units.tL14   = {'d', 'cm'};  label.tL14 = {'time since start', 'length', '20 C'};  
temp.tL14    = C2K(20);  units.temp.tL14 = 'K'; label.temp.tL14 = 'temperature';
bibkey.tL14 = 'WeltClar1980';
comment.tL14 =  [''];
%% set weights for all real data
weights = setweights(data, []);
weights.tW_m = 5* weights.tW_m;

%% set pseudodata and respective weights
[data, units, label, weights] = addpseudodata(data, units, label, weights);

%% pack auxData and txtData for output
auxData.temp = temp;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;

%% Group plots
set1 = {'tL4','tL3','tL2'}; comment1 = {'Data for 15, 11, 7 C'};
set2 = {'tL7','tL6','tL5'}; subtitle2 = {'Data for 15, 11, 7 C'};
set3 = {'tW_f','tW_m'}; subtitle3 = {'Data for female, male'};
set4 = {'tL10','tL9','tL8'}; subtitle4 = {'Huan2024 data for 15, 13, 11 C'};
set5 = {'tL14','tL13','tL12','tL11'}; subtitle5 = {'Huan2024 data for 20, 15, 10, 5 C'};
set6 = {'Tab', 'Tab2'}; comment2 = {'Data for 1, 5, 10, 15, 20C'};
metaData.grp.sets = {set1,set2,set3,set4,set5,set6};
metaData.grp.subtitle = {comment1,subtitle2,subtitle3,subtitle4,subtitle5,comment2};

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
% 
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
bibkey = 'WeltClar1980'; type = 'misc'; bib = [ ... 
'author = {J. S. Welton}, {R. T. Clarke}, ' ... 
'title = {Laboratory Studies on the Reproduction and Growth of the Amphipod, Gammarus pulex (L.)}, ' ...
'note = {}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];




