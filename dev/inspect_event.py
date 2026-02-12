import json

with open("priv/openapi/spec3.sdk.json", "r") as f:
    spec = json.load(f)
    
event = spec["components"]["schemas"]["v2.core.event"]
changes = event["properties"]["changes"]
print(json.dumps(changes, indent=2))
