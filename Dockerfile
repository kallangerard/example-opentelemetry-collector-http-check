FROM otel/opentelemetry-collector-contrib:0.91.0

COPY collector/ /

CMD ["--config", "/config.yaml"]