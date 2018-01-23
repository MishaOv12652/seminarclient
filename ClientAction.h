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
#include <openssl/rsa.h>
#include <sstream>

class ClientAction {
private:
    string pub_key;
    string priv_key;
public:
    ClientAction();

    ~ClientAction();

    ClientNetwork *network;
    char *getPrivKeyDest();
    char *getPubKeyFromServer();

    void sendActionPackets(unsigned char* pub_key,int save);

    char network_data[MAX_PACKET_SIZE];

    void receiveData(int save);

};


#endif //CLIENT_CLIENTACTION_H
