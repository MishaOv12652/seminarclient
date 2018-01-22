//
// Created by Misha on 22/01/2018.
//

#include "DecEnc.h"
#include <openssl/pem.h>
#include <openssl/ssl.h>
#include <openssl/rsa.h>
#include <openssl/evp.h>
#include <openssl/bio.h>
#include <openssl/err.h>
#include <stdio.h>
#include <string>

int padding = RSA_PKCS1_PADDING;
using namespace std;
DecEnc::DecEnc() {};

RSA *createRSA(char * key, int pub) {
    RSA *rsa = NULL;
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
//    FILE *fp = fopen(filename, "rb");
//
//    if (fp == NULL) {
//        printf("Unable to open file %s \n", filename);
//        return NULL;
//    }
//    RSA *rsa = RSA_new();
//
//    if (pub) {
//        rsa = PEM_read_RSA_PUBKEY(fp, &rsa, NULL, NULL);
//    } else {
//        rsa = PEM_read_RSAPrivateKey(fp, &rsa, NULL, NULL);
//    }
//
//    return rsa;
}

int public_encrypt(unsigned char *data, int data_len, char *file_name_key, unsigned char *encrypted) {
    RSA *rsa = createRSA(file_name_key, 1);
    int result = RSA_public_encrypt(data_len, data, encrypted, rsa, padding);
    return result;
}

int private_decrypt(unsigned char *enc_data, int data_len, char *file_name_key, unsigned char *decrypted) {
    RSA *rsa = createRSA(file_name_key, 0);
    int result = RSA_private_decrypt(data_len, enc_data, decrypted, rsa, padding);
    return result;
}


void printLastError(char *msg) {
    char *err = new char(130);
    ERR_load_crypto_strings();
    ERR_error_string(ERR_get_error(), err);
    printf("%s ERROR: %s\n", msg, err);
    free(err);
}