__author__ = 'misha'

from yamlreader import yaml_load
from yaml import dump

defaultconfig = {
        "loglevel": "error",
        "some": "value"
}

config = yaml_load("./source/*.yml")

#print(dump(config))
# print(config)

with open('./build/docker-compose.yml', 'w') as outfile:
    dump(config, outfile, default_flow_style=False)
