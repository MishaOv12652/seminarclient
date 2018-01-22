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

class ClientAction {
public:
    ClientAction();
    ~ClientAction();

    ClientNetwork* network;
    string getPubKeyFromServer();
    void sendActionPackets();

    char network_data[MAX_PACKET_SIZE];

    void update();
    void receiveData();
    void sendData();

};


#endif //CLIENT_CLIENTACTION_H
