import json
import sys
import os

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
    # Path to tiger_stripe spec relative to polar_express root
spec_path = os.path.abspath(os.path.join(os.getcwd(), "priv/openapi/spec3.sdk.json"))
    
    if not os.path.exists(spec_path):
        print(f"Error: Spec file not found at {spec_path}")
        return

    try:
        with open(spec_path, "r") as f:
            spec = json.load(f)
            # Find Price schema
            price_schema = spec.get("components", {}).get("schemas", {}).get("price", {})
            print(json.dumps(price_schema, indent=2))
            
            # Also check currency_options definition specifically
            co = price_schema.get("properties", {}).get("currency_options", {})
            print("\nCurrency Options:")
            print(json.dumps(co, indent=2))
            
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
