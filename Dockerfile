FROM daocloud.io/xin_cqu/matlab_config

MAINTAINER Li Dong <youlong1230@gmail.com>

RUN apt-get update
RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/youlong1230/DockerTEST.git
ADD wb_pipeline_EEG_REST /root/matlab_script/wb_pipeline_EEG_REST
ADD wb_pipeline_EEG_calcPower /root/matlab_script/wb_pipeline_EEG_calcPower
RUN chmod 777 -R /root/matlab_script/
RUN rm -rf /script
