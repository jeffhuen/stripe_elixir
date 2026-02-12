import json
import sys

def find_additional_properties(data, path=""):
    if isinstance(data, dict):
        for k, v in data.items():
            new_path = f"{path}.{k}" if path else k
            if k == "additionalProperties":
                if v is not False:
                    print(f"Found dynamic map at: {path}")
                    print(f"Value: {json.dumps(v, indent=2)}")
                    print("-" * 40)
            else:
                find_additional_properties(v, new_path)
    elif isinstance(data, list):
        for i, item in enumerate(data):
            find_additional_properties(item, f"{path}[{i}]")

def main():
    try:
        with open("priv/openapi/spec3.sdk.json", "r") as f:
            spec = json.load(f)
            find_additional_properties(spec)
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
