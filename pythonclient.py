import socket

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(('127.0.0.1', 50007))
client.send("It's your client. Hi".encode())

from_server = client.recv(4096)
print(from_server)
