//
// Created by Misha on 21/01/2018.
//

#ifndef CLIENT_NETWORKSERVICES_H
#define CLIENT_NETWORKSERVICES_H
#pragma once
#include <winsock2.h>
#include <Windows.h>


class NetworkServices {
public:
    static int sendMessage(SOCKET curSocket, char * message, int messageSize);
    static int receiveMessage(SOCKET curSocket, char * buffer, int bufSize);
};


#endif //CLIENT_NETWORKSERVICES_H
