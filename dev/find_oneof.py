import json

def find_oneof(data, path=""):
    if isinstance(data, dict):
        if "oneOf" in data:
            print(f"Found oneOf at: {path}")
            # print(json.dumps(data["oneOf"], indent=2))
            return # Stop after finding first few
        
        for k, v in data.items():
            if k.startswith("x-"): continue
            find_oneof(v, f"{path}.{k}" if path else k)
    elif isinstance(data, list):
        for i, item in enumerate(data):
            find_oneof(item, f"{path}[{i}]")

with open("priv/openapi/spec3.sdk.json", "r") as f:
    spec = json.load(f)
    print("Searching for oneOf in entire spec...")
    find_oneof(spec)
