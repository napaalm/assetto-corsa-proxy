#!/usr/bin/env python3

from socket import socket, AF_INET, SOCK_DGRAM
from threading import Thread
from queue import LifoQueue

server_port = 9600
server_socket = socket(AF_INET, SOCK_DGRAM)
server_socket.bind(('0.0.0.0', server_port))

def launch(server_addr):
    server_address = server_addr
    print("Automatic response enabled...")
    client_message, client_address = server_socket.recvfrom(2048)
    print("Sending magic packet...")
    server_socket.sendto(b'\xc8\x91\x1f', client_address)
