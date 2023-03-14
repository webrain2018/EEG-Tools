#FROM xin0214/matlab_config
FROM xin0214/matlab:latest

MAINTAINER Li Dong <Lidong@uestc.edu.cn>

#RUN apt-get update && apt-get -y install git && mkdir -p /script && cd /script && git clone https://github.com/webrain2018/EEG-Tools.git
ADD wb_pipeline_EEG_REST /root/matlab_script/wb_pipeline_EEG_REST
ADD wb_pipeline_EEG_calcPower /root/matlab_script/wb_pipeline_EEG_calcPower
ADD wb_pipeline_EEG_calcEEGnetwork /root/matlab_script/wb_pipeline_EEG_calcEEGnetwork
ADD wb_pipeline_EEG_calcBasicNetIndices /root/matlab_script/wb_pipeline_EEG_calcBasicNetIndices
ADD wb_pipeline_EEG_calcERP /root/matlab_script/wb_pipeline_EEG_calcERP
ADD wb_pipeline_EEG_Mark /root/matlab_script/wb_pipeline_EEG_Mark
ADD wb_pipeline_EEG_runICA /root/matlab_script/wb_pipeline_EEG_runICA
ADD wb_pipeline_EEG_calcLeadfield_standardBEM /root/matlab_script/wb_pipeline_EEG_calcLeadfield_standardBEM
ADD wb_pipeline_EEG_prepro /root/matlab_script/wb_pipeline_EEG_prepro
ADD wb_pipeline_EEG_QA /root/matlab_script/wb_pipeline_EEG_QA
ADD wb_pipeline_EEG_QA_v2 /root/matlab_script/wb_pipeline_EEG_QA_v2
ADD wb_pipeline_EEG_sourceimage /root/matlab_script/wb_pipeline_EEG_sourceimage
ADD wb_pipeline_EEG_prepro_cm /root/matlab_script/wb_pipeline_EEG_prepro_cm
ADD wb_pipeline_EEG_calcLZC /root/matlab_script/wb_pipeline_EEG_calcLZC
ADD wb_pipeline_EEG_timefreq /root/matlab_script/wb_pipeline_EEG_timefreq
ADD wb_pipeline_EEG_calcMicrostate /root/matlab_script/wb_pipeline_EEG_calcMicrostate
ADD wb_pipeline_EEG_calcERP_QA /root/matlab_script/wb_pipeline_EEG_calcERP_QA

ADD wb_pipeline_EEG_calcPower_par /root/matlab_script/wb_pipeline_EEG_calcPower_par
ADD wb_pipeline_EEG_calcEEGnetwork_par /root/matlab_script/wb_pipeline_EEG_calcEEGnetwork_par
ADD wb_pipeline_EEG_calcBasicNetIndices_par /root/matlab_script/wb_pipeline_EEG_calcBasicNetIndices_par
ADD wb_pipeline_EEG_runICA_par /root/matlab_script/wb_pipeline_EEG_runICA_par
ADD wb_pipeline_EEG_prepro_par /root/matlab_script/wb_pipeline_EEG_prepro_par
ADD wb_pipeline_EEG_sourceimage_par /root/matlab_script/wb_pipeline_EEG_sourceimage_par
ADD wb_pipeline_EEG_prepro_cm_par /root/matlab_script/wb_pipeline_EEG_prepro_cm_par
ADD wb_pipeline_EEG_calcLZC_par /root/matlab_script/wb_pipeline_EEG_calcLZC_par

ADD intermfile.mat /root/matlab_script/intermfile.mat
ADD GSN-HydroCel-33.sfp /root/matlab_script/GSN-HydroCel-33.sfp
ADD GSN-HydroCel-65.sfp /root/matlab_script/GSN-HydroCel-65.sfp
ADD GSN-HydroCel-129.sfp /root/matlab_script/GSN-HydroCel-129.sfp
ADD GSN-HydroCel-257.sfp /root/matlab_script/GSN-HydroCel-257.sfp
ADD MFF-1.2.jar /root/matlab_script/MFF-1.2.jar
ADD PIB.sfp /root/matlab_script/PIB.sfp
ADD ANT_WG_standard_346.ced /root/matlab_script/ANT_WG_standard_346.ced
ADD Standard-10-5-Cap385_witheog.elp /root/matlab_script/Standard-10-5-Cap385_witheog.elp

RUN chmod 777 -R /root/matlab_script/ 
WORKDIR /root/matlab_script
#RUN rm -rf /script
