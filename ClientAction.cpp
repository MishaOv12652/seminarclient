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
    this->pub_key = network_data;
    return network_data;
}

char *ClientAction::getPrivKeyDest(){
    int data_length = network->receivePackets(network_data);
    this->priv_key = network_data;
    return network_data;
}
void ClientAction::receiveData(int save) {
    string pk;
    DecEnc decenc;
    char decrypted[2048] = {};
    int data_length = network->receivePackets(network_data);
    if (data_length > 0) {
        if (save) {
            char * s = getPrivKeyDest();
            sendActionPackets((unsigned char *)this->pub_key.c_str(),0);
            return;
        }
        string buf = string(network_data, 0, data_length);
        int decrypted_length = decenc.private_decrypt((unsigned char*)buf.c_str(),strlen(buf.c_str()),(unsigned char*)this->priv_key.c_str(),(unsigned char*)decrypted);
        cout << "Server> " << string(decrypted, 0, decrypted_length) << endl;
        ClientAction::sendActionPackets((unsigned char *)this->pub_key.c_str(),save);
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

