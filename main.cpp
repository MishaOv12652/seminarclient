#include <iostream>
#include "ClientAction.h"
// used for multi-threading
#include <process.h>

ClientAction * client;

int main(int argc, char* argv[]) {
    cout<<"argv[0]: "<< argv[0]<<endl;
    client = new ClientAction();
    //get Public Key
        string pub_rsa_string = "";
    do{
         pub_rsa_string = client->getPubKeyFromServer();
    }while (pub_rsa_string.length()==0);
    cout << "got pub key from server" << pub_rsa_string << endl;
    client->sendActionPackets((unsigned char*)pub_rsa_string.c_str(),1);


    while(true)
    {
        client->receiveData(0);
    }
}