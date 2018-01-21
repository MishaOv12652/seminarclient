#include <iostream>
#include "ClientAction.h"
// used for multi-threading
#include <process.h>
ClientAction * client;

int main(int argc, char* argv[]) {
    client = new ClientAction();
    //get Public Key
    while(true)
    {
        //do game stuff
        client->receiveData();

    }
    //main loop
//    while(true)
//    {
//        //do game stuff
//        client->receiveData();
//    }
}