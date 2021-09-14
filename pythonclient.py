import socket

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(('127.0.0.1', 50007))
client.send("It's your client. Hi".encode())
#receive values from server
from_server = client.recv(4096)
print(from_server.decode())
print("Type what you want to send to server")
while True:
    s=input()
    client.send(s.encode())
    #close the program if you type 'exit'
    if s=='exit':
        client.close()
        exit()
