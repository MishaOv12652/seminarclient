//
// Created by Misha on 21/01/2018.
//

#include "ClientAction.h"
#include "DecEnc.h"
#include <iostream>


using namespace std;

ClientAction::ClientAction() {
    network = new ClientNetwork();
}


ClientAction::~ClientAction() {
}

char *ClientAction::getPubKeyFromServer() {
    int data_length = network->receivePackets(network_data);
    return network_data;
}

void ClientAction::receiveData() {
    int data_length = network->receivePackets(network_data);
    if (data_length > 0) {
        cout << "Server> " << string(network_data, 0, data_length) << endl;
        //ClientAction::sendActionPackets();
    }
}


void ClientAction::sendActionPackets(unsigned char* pub_key) {
    DecEnc decenc;
    char encrypted[2048] = {};
    string userInput;
    cout << ">";
    getline(cin, userInput);
    if (userInput.size() > 0) {
        int encrypted_length = decenc.public_encrypt((unsigned char *) userInput.c_str(),
                                                     strlen((char *) userInput.c_str()),
                                                     pub_key, (unsigned char *) encrypted);
        int sendRes = NetworkServices::sendMessage(network->ConnectSocket,  encrypted,
                                                   encrypted_length);
        if (sendRes != SOCKET_ERROR) {
            ClientAction::receiveData();
        }
    }
}

