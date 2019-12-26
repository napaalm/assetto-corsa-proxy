#!/usr/bin/python3

from socket import socket, AF_INET, SOCK_DGRAM

server_port = 9600
server_socket = socket(AF_INET, SOCK_DGRAM)
server_socket.bind(('0.0.0.0', server_port))
client_socket = socket(AF_INET, SOCK_DGRAM)

def main():
    print("Listening...")
    client_message, client_address = server_socket.recvfrom(2048)
    print(b'Recived: ' + client_message + b' from: ' + str(client_address).encode())
    print(b'Sending \xc8\x91\x1f ...')
    server_socket.sendto(b'\xc8\x91\x1f', client_address)

if __name__ == "__main__":
    main()
