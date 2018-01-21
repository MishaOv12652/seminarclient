cmake_minimum_required(VERSION 3.9)
project(Client)

set(CMAKE_CXX_STANDARD 11)

add_executable(Client main.cpp NetworkServices.cpp NetworkServices.h ClientNetwork.cpp ClientNetwork.h NetworkData.h ClientAction.cpp ClientAction.h EncDEcrypt.cpp EncDEcrypt.h)
#main.cpp
target_link_libraries(Client ws2_32 crypt32)
