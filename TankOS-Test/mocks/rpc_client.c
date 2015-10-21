/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#define RPC_CLIENT_IMPLEMENTATION
#include "rpc_client.h"

int rpcVar_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(TestResStruct)) return 0;
    TestResStruct *res = (TestResStruct*) results;
    return print("rpcVar: %i %.1f %.*s", res->res0, res->res1, 3, res->res2);
}

int rpcVarArgs_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(TestResStruct)) return 0;
    TestResStruct *res = (TestResStruct*) results;
    return print("rpcVarArgs: %i %.1f %.*s", res->res0, res->res1, 3, res->res2);
}

int rpcVarRes_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(TestResStruct)) return 0;
    TestResStruct *res = (TestResStruct*) results;
    return print("rpcVarRes: %i %.1f %.*s", res->res0, res->res1, 3, res->res2);
}

int rpcNormal_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(TestResStruct)) return 0;
    TestResStruct *res = (TestResStruct*) results;
    return print("rpcNormal: %i %.1f %.*s", res->res0, res->res1, 3, res->res2);
}

int rpcNoargs_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(TestResStruct)) return 0;
    TestResStruct *res = (TestResStruct*) results;
    return print("rpcNoargs: %i %.1f %.*s", res->res0, res->res1, 3, res->res2);
}

int rpcNoargsVar_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(TestResStruct)) return 0;
    TestResStruct *res = (TestResStruct*) results;
    return print("rpcNoargsVar: %i %.1f %.*s", res->res0, res->res1, 3, res->res2);
}
