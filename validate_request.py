import sys
from pathlib import Path

def create_file(module):
    filename = "metadata." + module + ".file"
    with open(filename, "w") as wfile:
        wfile.write(module)
    print(filename + " created with '" + module + "' information.")

def check_in_known_sources(known_sources, module):
    with open(known_sources, "r") as ofile:
        lines = ofile.readlines()
        known_list = [ item.replace("\n", "") for item in lines ]
        print(known_list)
    if module in known_list:
        create_file(module)
    else:
        print("Module: " + module + "not configured in known_sources. Please configure.")

if __name__ == "__main__":
    module = sys.argv[1]
    known_sources = Path("known_sources")
    print(known_sources)
    print("Starting validation process...")
    check_in_known_sources(known_sources, module)
    print("End of validation process.")
