//
// Created by Misha on 21/01/2018.
//

#include "ClientAction.h"
#include <iostream>

using namespace std;

ClientAction::ClientAction() {
    network = new ClientNetwork();
}


ClientAction::~ClientAction() {
}


void ClientAction::receiveData() {
    int data_length = network->receivePackets(network_data);
    if (data_length > 0) {
        cout << "Server> " << string(network_data, 0, data_length) << endl;
        ClientAction::sendActionPackets();
    }
}


void ClientAction::sendActionPackets() {
    string userInput;
    cout << ">";
    getline(cin, userInput);
    if (userInput.size() > 0) {
        int sendRes = send(network->ConnectSocket, userInput.c_str(), userInput.size(), 0);
        if (sendRes != SOCKET_ERROR) {
            ClientAction::receiveData();
        }
    }
}

