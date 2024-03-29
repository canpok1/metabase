FROM openjdk:22

RUN mkdir /metabase \
    && curl https://downloads.metabase.com/v0.48.7/metabase.jar -o /metabase/metabase.jar

WORKDIR /metabase
ENTRYPOINT [ "java", "-jar", "metabase.jar" ]

