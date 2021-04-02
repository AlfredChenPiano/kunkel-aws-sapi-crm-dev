# Mule 4 template - base


### What is included in this template?
- Mule runtime set to 4.3.0
- CIDC pipeline configuration pre configured
- EI Features:
	- Splunk Logging (aka Firehose logging)
- Global elements aggregated in a single configuration file
- All Error are aggregated in a single configuration file
- Pre-populated application property files
- Updated file and folder structure
- pom.xml updated to use Ei's parent POM
- environment specific YAML property files
	- dev
	- prod
- Elements are dynamically configured so you just need to update the property value in the YAML file
- Sample RAML
- The following global elements are already configured:
	- HTTP Listener
	- API Kit Router
	- Global environment property
	- Dynamic properties: Depending on the environment property value, will load one property file or the other.
- Sample flows:
	- `/ping` for monitoring.
	- `/template` as an example flow.
- Template testing suits included:
	- Bat
	- Karate


For more information and how to use this template please visit the [mule template confluence page](https://confluence.internal.salesforce.com/display/ITEI/The+Mule4+Template)

