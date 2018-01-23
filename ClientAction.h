//
// Created by Misha on 21/01/2018.
//

#ifndef CLIENT_CLIENTACTION_H
#define CLIENT_CLIENTACTION_H
#pragma once

#include <winsock2.h>
#include <windows.h>
#include "ClientNetwork.h"
#include "NetworkData.h"
#include <sstream>

class ClientAction {
public:
    ClientAction();

    ~ClientAction();

    ClientNetwork *network;

    char *getPubKeyFromServer();

    void sendActionPackets(unsigned char* pub_key);

    char network_data[MAX_PACKET_SIZE];

    void receiveData(unsigned char* pub_key);

};


#endif //CLIENT_CLIENTACTION_H
