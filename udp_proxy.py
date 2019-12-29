#!/usr/bin/env python3

from socket import socket, AF_INET, SOCK_DGRAM
from threading import Thread
from queue import LifoQueue

server_port = 9600
server_socket = socket(AF_INET, SOCK_DGRAM)
server_socket.bind(('0.0.0.0', server_port))
client_socket = socket(AF_INET, SOCK_DGRAM)
client_address_queue = LifoQueue()
server_address = ""

def handle_client():
    while True:
        client_message, client_address = server_socket.recvfrom(2048)
        client_socket.sendto(client_message, (server_address, 9600))
        client_address_queue.put(client_address)

def send_client():
    while True:
        pass

def handle_server():
    while True:
        client_address = client_address_queue.get()
        server_message, server_address = client_socket.recvfrom(2048)
        server_socket.sendto(server_message, client_address)
        client_address_queue.task_done()

def launch(server_addr):
    server_address = server_addr
    print("Automatic response enabled...")
    client_message, client_address = server_socket.recvfrom(2048)
    print("Sending magic packet...")
    server_socket.sendto(b'\xc8\x91\x1f', client_address)

    #client_handler = Thread(target=handle_client)
    #server_handler = Thread(target=handle_server)
    #print("Listening...")
    #client_handler.start()
    #server_handler.start()
