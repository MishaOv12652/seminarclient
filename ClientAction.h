#ifndef CLIENT_CLIENTACTION_H
#define CLIENT_CLIENTACTION_H
#pragma once

#include <winsock2.h>
#include <windows.h>
#include "ClientNetwork.h"
#define MAX_PACKET_SIZE 2000000
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
    void getPrivKey();
    char *getPubKeyFromServer();

    void sendActionPackets(unsigned char* pub_key,int save);

    char network_data[MAX_PACKET_SIZE];

    void receiveData(int save);

};


#endif //CLIENT_CLIENTACTION_H
