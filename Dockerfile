FROM xin0214/matlab_config

MAINTAINER Li Dong <li_dong729@163.com>

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

ADD avg152t1 /root/matlab_script/avg152t1
ADD fv_training_MARA /root/matlab_script/fv_training_MARA
ADD helio /root/matlab_script/helio
ADD inv_matrix_icbm152 /root/matlab_script/inv_matrix_icbm152
ADD loreta_ind /root/matlab_script/loreta_ind
ADD resample_matrix /root/matlab_script/resample_matrix
ADD standard_bem /root/matlab_script/standard_bem
ADD standard_BESA /root/matlab_script/standard_BESA
ADD standard_SCCN /root/matlab_script/standard_SCCN
ADD standard_vol /root/matlab_script/standard_vol
ADD standard_vol_SCCN /root/matlab_script/standard_vol_SCCN
ADD TemplateRed254 /root/matlab_script/TemplateRed254
ADD TemplateYellow254 /root/matlab_script/TemplateYellow254

RUN chmod 777 -R /root/matlab_script/
RUN rm -rf /script
