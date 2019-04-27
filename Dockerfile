FROM mesosphere/spark

RUN apt update && apt install -y python-numpy python-six wget

RUN cd /opt
RUN wget https://oss.sonatype.org/content/repositories/releases/com/intel/analytics/zoo/analytics-zoo-bigdl_0.7.2-spark_2.4.0/0.4.0/analytics-zoo-bigdl_0.7.2-spark_2.4.0-0.4.0-dist-all.zip
RUN unzip analytics-zoo-bigdl_0.7.2-spark_2.4.0-0.4.0-dist-all.zip

ENV SPARK_HOME /opt/spark/dist
ENV ANALYTICS_ZOO_HOME /opt/analytics-zoo

WORKDIR /opt

