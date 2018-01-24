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
    this->pub_key = network_data;
    return network_data;
}

void ClientAction::getPrivKeyDest() {
    int data_length = network->receivePackets(network_data);
    this->priv_key = network_data;
}

void ClientAction::receiveData(int save) {
    DecEnc decenc;
    int data_length;
    char decrypted[2048] = {};
    do {
        data_length = network->receivePackets(network_data);
        Sleep(500);
    } while (data_length == -1);
    if (data_length > 0) {
        if (save) {
            getPrivKeyDest();
            sendActionPackets((unsigned char *) this->pub_key.c_str(), 0);
            ClientAction::sendActionPackets((unsigned char *) this->pub_key.c_str(), 0);
        } else {
            int decrypted_length = decenc.private_decrypt((unsigned char *) network_data, data_length,
                                                          (unsigned char *) priv_key.c_str(),
                                                          (unsigned char *) decrypted);
            cout << "Server> " << string(decrypted, 0, decrypted_length) << endl;
            ClientAction::sendActionPackets((unsigned char *) this->pub_key.c_str(), save);
        }

    }
}


void ClientAction::sendActionPackets(unsigned char *pub_key, int save) {
    DecEnc decenc;
    char encrypted[2048] = {};
    string userInput;
    cout << ">";
    getline(cin, userInput);
    if (userInput.size() > 0) {
        int encrypted_length = decenc.public_encrypt((unsigned char *) userInput.c_str(),
                                                     strlen((char *) userInput.c_str()),
                                                     pub_key, (unsigned char *) encrypted);
        int sendRes = NetworkServices::sendMessage(network->ConnectSocket, encrypted,
                                                   encrypted_length);
        if (sendRes != SOCKET_ERROR) {
            ClientAction::receiveData(save);
        }
    }
}

