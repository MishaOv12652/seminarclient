//
// Created by Misha on 21/01/2018.
//

#ifndef CLIENT_CLIENTNETWORK_H
#define CLIENT_CLIENTNETWORK_H
#pragma once
// Networking libraries
#include <winsock2.h>
#include <Windows.h>
#include "NetworkServices.h"
#include <ws2tcpip.h>
#include <stdio.h>
#define MAX_PACKET_SIZE 2000000

// size of our buffer
#define DEFAULT_BUFLEN 2048
// port to connect sockets through
#define DEFAULT_PORT "5200"
// Need to link with Ws2_32.lib, Mswsock.lib, and Advapi32.lib
#pragma comment (lib, "ws2_32.lib")
#pragma comment (lib, "mswsock.lib")
//#pragma comment (lib, "advApi32.lib")

class ClientNetwork {
public:

    // for error checking function calls in Winsock library
    int iResult;

    // socket for client to connect to server
    SOCKET ConnectSocket;

    // ctor/dtor
    ClientNetwork(void);
    ~ClientNetwork(void);

    int receivePackets(char *);
};


#endif //CLIENT_CLIENTNETWORK_H
