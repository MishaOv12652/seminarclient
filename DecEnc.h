//
// Created by Misha on 22/01/2018.
//

#ifndef CLIENT_DECENC_H
#define CLIENT_DECENC_H
#include <openssl/pem.h>
#include <openssl/err.h>

class DecEnc {
    RSA *createRSAWithFilename(char *filename, int i);
    int public_encrypt(unsigned char *data, int data_len, unsigned char *key, unsigned char *encrypted);
    int private_decrypt(unsigned char *enc_data, int data_len, unsigned char *key, unsigned char *decrypted);
    void printLastError(char *msg);
};


#endif //CLIENT_DECENC_H
