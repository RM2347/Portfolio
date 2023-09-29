%Impingement Jet Injector Design
clear;clc;
%User Input
Gravity= 32.172; %Gravity (ft/s^2)
ChambPress=300;  %Chamber Pressure (psi)
Fuel_Den=48.38; %Fuel Denisty (lbm/ft^3)
Fuel_MassFR=0.689; %Fuel Mass Flow Rate  (lbm/sec)
Fuel_DisCoeff=0.7; %Fuel Discharge Coefficient
Fuel_Inject_DP_Percent=.20; %Fuel Injector Delta P in decimal form
FuelOrif_NumElemSets=10; %Fuel Orifice Number of Element Sets
FuelOrif_PerSet=2; %Fuel Orifices Per Set
FilmCool_FlowPer= .10; %Film Coolant Orifices Flow Percentage in decimal form
FilmCoolOrif_NumElemSet=16; %Film Coolant Orifices Number of Sets
FilmCoolOrif_PerSet=1; %Film Coolant Orifices Per Set
FilmCoolOrif_FlowPer= .10; %Film Coolant Orifices Flow Percentage
Oxidizer_Den= 66.83; %Oxidizer Density (lbm/ft^3)
Oxidizer_InjectDeltaP_Per=.20; %Oxidizer Injector Delta P Percent in decimal form
Oxidizer_MassFR= 1.681; %Oxidizer Mass Flow Rate (lbm/s)
Oxidizer_DisCoeff= 0.7; %Oxidizer Discharge Coefficient
OxidizerOrif_FlowPer=1; %Oxidizer Orifices Flow Percentage
OxidizerOrif_MassFR= 1.681; %Oxidizer Orifices Mass Flow Rate (lbm/s)
OxidizerOrif_NumOfSets= 10; %Oxidizer Orifices Number of Sets
OxidizerOrif_PerSet=2; %Oxidizer Orifices Per Set

%Fuel
Fuel_Inject_DP= Fuel_Inject_DP_Percent*ChambPress %Injector Delta P (psi)

%Fuel Orifices
FuelOrif_FlowPer= 1-FilmCool_FlowPer %Fuel Orifices Flow Percentage
FuelOrif_MassFR= FuelOrif_FlowPer*Fuel_MassFR %Fuel Orifices Mass Flow Rate (lbm/sec)
FuelOrif_TotalInjectArea= (FuelOrif_MassFR/(Fuel_DisCoeff*sqrt(2*Gravity*Fuel_Den*Fuel_Inject_DP*144)))*144 %Fuel Orifices Total Injection Area (in^2)
FuelOrif_VolumeFR= FuelOrif_MassFR/Fuel_Den %Fuel Orifices Volume Flow rate (ft^3/s)
FuelOrif_Dia=sqrt((4*FuelOrif_TotalInjectArea)/(pi*FuelOrif_NumElemSets*FuelOrif_PerSet)) %Fuel Orifices Diameter (in)
FuelOrif_InjectVel=(144*FuelOrif_MassFR)/(FuelOrif_TotalInjectArea*Fuel_Den) %Fuel Orifices Injector Velocity (ft/s)

%Film Coolant Orifices
FilmCoolOrif_MassFR=Fuel_MassFR*FilmCoolOrif_FlowPer  %Film Coolant Orifices Mass Flow Rate (lbm/s)
FilmCoolOrif_TotalInjectArea= FilmCoolOrif_MassFR/(Fuel_DisCoeff*sqrt(2*Gravity*Fuel_Den*Fuel_Inject_DP*144))*144 %Film Coolant Orifices Total Injection Area (in^2)
FilmCoolOrif_VolFR= FilmCoolOrif_MassFR/Fuel_Den %Film Coolant Orifices Volume Flow Rate (ft^3)
FilmCoolOrif_Dia= sqrt((4*FilmCoolOrif_TotalInjectArea)/(pi*FilmCoolOrif_NumElemSet*FilmCoolOrif_PerSet)) %Film Coolant Orifices Diameter (in)
FilmCoolOrif_InjectVel=(144*FilmCoolOrif_MassFR)/(FilmCoolOrif_TotalInjectArea*Fuel_Den) %Film Coolant Orifices Injector Velocity (ft/s)

%Oxidizer
Oxidizer_InjectDeltaP= Oxidizer_InjectDeltaP_Per*ChambPress

%Oxidizer Orifices
OxidizerOrif_TotalInjectArea= (OxidizerOrif_MassFR/(Oxidizer_DisCoeff*sqrt(2*Gravity*Oxidizer_Den*Oxidizer_InjectDeltaP*144)))*144 %Oxidizer Orifices Total Injection Area (in^2)
OxidizerOrif_VolFR= OxidizerOrif_MassFR/Oxidizer_Den %Oxidizer Orifices Volume Flow Rate (ft^3/s)
OxidizerOrif_Dia= sqrt((4*OxidizerOrif_TotalInjectArea)/(pi*OxidizerOrif_NumOfSets*OxidizerOrif_PerSet)) %Oxidizer Orifices Diameter (in)
OxidizerOrif_InjectVel=(144*OxidizerOrif_MassFR)/(OxidizerOrif_TotalInjectArea*Oxidizer_Den) %Oxidizer Orifices Injection Velocity (ft/s)

%Wall Mixture Ratio
Wall_MixRatio= OxidizerOrif_MassFR/(Fuel_MassFR+FilmCoolOrif_MassFR)

%Core Mixture Ratio
Core_MixRatio= OxidizerOrif_MassFR/(Fuel_MassFR-FilmCoolOrif_MassFR)
