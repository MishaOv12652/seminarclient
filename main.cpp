#include <iostream>
#include "ClientAction.h"
// used for multi-threading
#include <process.h>

ClientAction * client;

int main(int argc, char* argv[]) {
    client = new ClientAction();
    while(true)
    {
        //do game stuff
        client->update();
        return 0;
    }
}