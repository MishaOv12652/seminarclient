//
// Created by Misha on 22/01/2018.
//

#include "DecEnc.h"
#include <string>
#include <direct.h>

int padding = RSA_PKCS1_OAEP_PADDING;
using namespace std;

DecEnc::DecEnc() {};

RSA *DecEnc::createRSA(unsigned char *key, int pub) {
    RSA *rsa = RSA_new();
    BIO *keybio;
    keybio = BIO_new_mem_buf(key, -1);
    if (keybio == NULL) {
        printf("Failed to create key BIO");
        return 0;
    }
    if (pub) {
        rsa = PEM_read_bio_RSA_PUBKEY(keybio, &rsa, NULL, NULL);
    } else {
        rsa = PEM_read_bio_RSAPrivateKey(keybio, &rsa, NULL, NULL);
    }
    if (rsa == NULL) {
        printf("Failed to create RSA");
    }

    return rsa;
}


int DecEnc::public_encrypt(unsigned char *data, int data_len, unsigned char *key, unsigned char *encrypted) {
    RSA *rsa = createRSA(key, 1);
    int result = RSA_public_encrypt(data_len, data, encrypted, rsa, padding);
    return result;
}

int DecEnc::private_decrypt(unsigned char *enc_data, int data_len, unsigned char *key, unsigned char *decrypted) {
    RSA *rsa = createRSA(key, 0);
    int result = RSA_private_decrypt(data_len, enc_data, decrypted, rsa, padding);
    return result;
}


