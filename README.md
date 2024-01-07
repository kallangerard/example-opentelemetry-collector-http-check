# OpenTelemetry Collector for HTTP Checks

A configuration for an OpenTelemetry Collector designed to perform periodic HTTP checks on specified endpoints and collect metrics. Otherwise known as HTTP synthetic monitoring or tests.

It's set up to run as a Fly.io application.

## Overview

The goal of this check is to run out-of-band checks of your service from the public internet, the same way your consumers would use it.

It's important to not use the same infrastructure that your services run on, as that would not give you a true picture of how your service is performing from the outside.

- Perform HTTP checks on specified endpoints every 60 seconds
- Export collected metrics to be scraped by Fly.io's Prometheus server
- Run well within the free tier of fly.io

### Production Use

For a typical production use case you would want to consider the following

- Add your observability vendor's otelcol exporter to the collector
- Add multiple regions to the fly.io app
- Create a custom collector image to remove the `contrib` libraries we don't really need
