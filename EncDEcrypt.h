//
// Created by Misha on 1/21/2018.
//

#ifndef CLIENT_ENCDECRYPT_H
#define CLIENT_ENCDECRYPT_H

#include <tchar.h>
#include <stdio.h>
#include <windows.h>
#include <wincrypt.h>
#include <conio.h>

// Link with the Advapi32.lib file.
#pragma comment (lib, "advapi32")

#pragma comment(lib, "Crypt32")

#define KEYLENGTH  0x00800000
#define ENCRYPT_ALGORITHM CALG_RC4
#define ENCRYPT_BLOCK_SIZE 8

class EncDEcrypt {
    int Encrypt(_TCHAR *strPublicKeyFile, _TCHAR *strPlainFile, _TCHAR *strEncryptedFile);

    int Decrypt(_TCHAR *strPrivateKeyFile, _TCHAR *strEncryptedFile, _TCHAR *strPlainFile);
};


#endif //CLIENT_ENCDECRYPT_H
