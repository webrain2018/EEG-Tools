#FROM xin0214/matlab_config
FROM xin0214/matlab:latest

MAINTAINER Li Dong <Lidong@uestc.edu.cn>

RUN apt-get update
RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/webrain2018/EEG-Tools.git
ADD wb_pipeline_EEG_REST /root/matlab_script/wb_pipeline_EEG_REST
ADD wb_pipeline_EEG_calcPower /root/matlab_script/wb_pipeline_EEG_calcPower
ADD wb_pipeline_EEG_calcPower_par /root/matlab_script/wb_pipeline_EEG_calcPower_par
ADD wb_pipeline_EEG_calcEEGnetwork /root/matlab_script/wb_pipeline_EEG_calcEEGnetwork
ADD wb_pipeline_EEG_calcBasicNetIndices /root/matlab_script/wb_pipeline_EEG_calcBasicNetIndices
ADD wb_pipeline_EEG_calcERP /root/matlab_script/wb_pipeline_EEG_calcERP
ADD wb_pipeline_EEG_Mark /root/matlab_script/wb_pipeline_EEG_Mark
ADD wb_pipeline_EEG_runICA /root/matlab_script/wb_pipeline_EEG_runICA
ADD wb_pipeline_EEG_calcLeadfield_standardBEM /root/matlab_script/wb_pipeline_EEG_calcLeadfield_standardBEM
ADD wb_pipeline_EEG_prepro /root/matlab_script/wb_pipeline_EEG_prepro
ADD wb_pipeline_EEG_QA /root/matlab_script/wb_pipeline_EEG_QA
ADD wb_pipeline_EEG_sourceimage /root/matlab_script/wb_pipeline_EEG_sourceimage
ADD wb_pipeline_EEG_prepro_cm /root/matlab_script/wb_pipeline_EEG_prepro_cm

ADD intermfile.mat /root/matlab_script/intermfile.mat

RUN chmod 777 -R /root/matlab_script/
RUN rm -rf /script
