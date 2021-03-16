// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _ole32 = DynamicLibrary.open('ole32.dll');

/// Looks up a CLSID in the registry, given a ProgID.
///
/// ```c
/// HRESULT CLSIDFromProgID(
///   LPCOLESTR lpszProgID,
///   LPCLSID   lpclsid
/// );
/// ```
/// {@category ole32}
int CLSIDFromProgID(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid) {
  final _CLSIDFromProgID = _ole32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
      int Function(
          Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid)>('CLSIDFromProgID');
  return _CLSIDFromProgID(lpszProgID, lpclsid);
}

/// Triggers automatic installation if the COMClassStore policy is enabled.
///
/// ```c
/// HRESULT CLSIDFromProgIDEx(
///   LPCOLESTR lpszProgID,
///   LPCLSID   lpclsid
/// );
/// ```
/// {@category ole32}
int CLSIDFromProgIDEx(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid) {
  final _CLSIDFromProgIDEx = _ole32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
      int Function(Pointer<Utf16> lpszProgID,
          Pointer<GUID> lpclsid)>('CLSIDFromProgIDEx');
  return _CLSIDFromProgIDEx(lpszProgID, lpclsid);
}

/// Converts a string generated by the StringFromCLSID function back into
/// the original CLSID.
///
/// ```c
/// HRESULT CLSIDFromString(
///   LPCOLESTR lpsz,
///   LPCLSID   pclsid
/// );
/// ```
/// {@category ole32}
int CLSIDFromString(Pointer<Utf16> lpsz, Pointer<GUID> pclsid) {
  final _CLSIDFromString = _ole32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpsz, Pointer<GUID> pclsid),
      int Function(
          Pointer<Utf16> lpsz, Pointer<GUID> pclsid)>('CLSIDFromString');
  return _CLSIDFromString(lpsz, pclsid);
}

/// Increments a global per-process reference count.
///
/// ```c
/// ULONG CoAddRefServerProcess();
/// ```
/// {@category ole32}
int CoAddRefServerProcess() {
  final _CoAddRefServerProcess =
      _ole32.lookupFunction<Uint32 Function(), int Function()>(
          'CoAddRefServerProcess');
  return _CoAddRefServerProcess();
}

/// Creates a GUID, a unique 128-bit integer used for CLSIDs and interface
/// identifiers.
///
/// ```c
/// HRESULT CoCreateGuid(
///   GUID *pguid
/// );
/// ```
/// {@category ole32}
int CoCreateGuid(Pointer<GUID> pguid) {
  final _CoCreateGuid = _ole32.lookupFunction<
      Int32 Function(Pointer<GUID> pguid),
      int Function(Pointer<GUID> pguid)>('CoCreateGuid');
  return _CoCreateGuid(pguid);
}

/// Creates a single uninitialized object of the class associated with a
/// specified CLSID. Call CoCreateInstance when you want to create only one
/// object on the local system. To create a single object on a remote
/// system, call the CoCreateInstanceEx function. To create multiple
/// objects based on a single CLSID, call the CoGetClassObject function.
///
/// ```c
/// HRESULT CoCreateInstance(
///   REFCLSID  rclsid,
///   LPUNKNOWN pUnkOuter,
///   DWORD     dwClsContext,
///   REFIID    riid,
///   LPVOID    *ppv
/// );
/// ```
/// {@category ole32}
int CoCreateInstance(Pointer<GUID> rclsid, Pointer pUnkOuter, int dwClsContext,
    Pointer<GUID> riid, Pointer<Pointer> ppv) {
  final _CoCreateInstance = _ole32.lookupFunction<
      Int32 Function(Pointer<GUID> rclsid, Pointer pUnkOuter,
          Uint32 dwClsContext, Pointer<GUID> riid, Pointer<Pointer> ppv),
      int Function(Pointer<GUID> rclsid, Pointer pUnkOuter, int dwClsContext,
          Pointer<GUID> riid, Pointer<Pointer> ppv)>('CoCreateInstance');
  return _CoCreateInstance(rclsid, pUnkOuter, dwClsContext, riid, ppv);
}

/// Provides a pointer to an interface on a class object associated with a
/// specified CLSID. CoGetClassObject locates, and if necessary,
/// dynamically loads the executable code required to do this.
///
/// ```c
/// HRESULT CoGetClassObject(
///   REFCLSID rclsid,
///   DWORD    dwClsContext,
///   LPVOID   pvReserved,
///   REFIID   riid,
///   LPVOID   *ppv
/// );
/// ```
/// {@category ole32}
int CoGetClassObject(Pointer<GUID> rclsid, int dwClsContext, Pointer pvReserved,
    Pointer<GUID> riid, Pointer<Pointer> ppv) {
  final _CoGetClassObject = _ole32.lookupFunction<
      Int32 Function(Pointer<GUID> rclsid, Uint32 dwClsContext,
          Pointer pvReserved, Pointer<GUID> riid, Pointer<Pointer> ppv),
      int Function(Pointer<GUID> rclsid, int dwClsContext, Pointer pvReserved,
          Pointer<GUID> riid, Pointer<Pointer> ppv)>('CoGetClassObject');
  return _CoGetClassObject(rclsid, dwClsContext, pvReserved, riid, ppv);
}

/// Returns a value that is unique to the current thread.
/// CoGetCurrentProcess can be used to avoid thread ID reuse problems.
///
/// ```c
/// DWORD CoGetCurrentProcess();
/// ```
/// {@category ole32}
int CoGetCurrentProcess() {
  final _CoGetCurrentProcess = _ole32
      .lookupFunction<Uint32 Function(), int Function()>('CoGetCurrentProcess');
  return _CoGetCurrentProcess();
}

/// Initializes the COM library for use by the calling thread, sets the
/// thread's concurrency model, and creates a new apartment for the thread
/// if one is required.
///
/// ```c
/// HRESULT CoInitializeEx(
///   LPVOID pvReserved,
///   DWORD  dwCoInit
/// );
/// ```
/// {@category ole32}
int CoInitializeEx(Pointer pvReserved, int dwCoInit) {
  final _CoInitializeEx = _ole32.lookupFunction<
      Int32 Function(Pointer pvReserved, Uint32 dwCoInit),
      int Function(Pointer pvReserved, int dwCoInit)>('CoInitializeEx');
  return _CoInitializeEx(pvReserved, dwCoInit);
}

/// Registers security and sets the default security values for the
/// process.
///
/// ```c
/// HRESULT CoInitializeSecurity(
///   PSECURITY_DESCRIPTOR        pSecDesc,
///   LONG                        cAuthSvc,
///   SOLE_AUTHENTICATION_SERVICE *asAuthSvc,
///   void                        *pReserved1,
///   DWORD                       dwAuthnLevel,
///   DWORD                       dwImpLevel,
///   void                        *pAuthList,
///   DWORD                       dwCapabilities,
///   void                        *pReserved3
/// );
/// ```
/// {@category ole32}
int CoInitializeSecurity(
    Pointer pSecDesc,
    int cAuthSvc,
    Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
    Pointer pReserved1,
    int dwAuthnLevel,
    int dwImpLevel,
    Pointer pAuthList,
    int dwCapabilities,
    Pointer pReserved3) {
  final _CoInitializeSecurity = _ole32.lookupFunction<
      Int32 Function(
          Pointer pSecDesc,
          Int32 cAuthSvc,
          Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
          Pointer pReserved1,
          Uint32 dwAuthnLevel,
          Uint32 dwImpLevel,
          Pointer pAuthList,
          Uint32 dwCapabilities,
          Pointer pReserved3),
      int Function(
          Pointer pSecDesc,
          int cAuthSvc,
          Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
          Pointer pReserved1,
          int dwAuthnLevel,
          int dwImpLevel,
          Pointer pAuthList,
          int dwCapabilities,
          Pointer pReserved3)>('CoInitializeSecurity');
  return _CoInitializeSecurity(pSecDesc, cAuthSvc, asAuthSvc, pReserved1,
      dwAuthnLevel, dwImpLevel, pAuthList, dwCapabilities, pReserved3);
}

/// Sets the authentication information that will be used to make calls on
/// the specified proxy. This is a helper function for
/// IClientSecurity::SetBlanket.
///
/// ```c
/// HRESULT CoSetProxyBlanket(
///   IUnknown                 *pProxy,
///   DWORD                    dwAuthnSvc,
///   DWORD                    dwAuthzSvc,
///   OLECHAR                  *pServerPrincName,
///   DWORD                    dwAuthnLevel,
///   DWORD                    dwImpLevel,
///   RPC_AUTH_IDENTITY_HANDLE pAuthInfo,
///   DWORD                    dwCapabilities
/// );
/// ```
/// {@category ole32}
int CoSetProxyBlanket(
    Pointer pProxy,
    int dwAuthnSvc,
    int dwAuthzSvc,
    Pointer<Utf16> pServerPrincName,
    int dwAuthnLevel,
    int dwImpLevel,
    Pointer pAuthInfo,
    int dwCapabilities) {
  final _CoSetProxyBlanket = _ole32.lookupFunction<
      Int32 Function(
          Pointer pProxy,
          Uint32 dwAuthnSvc,
          Uint32 dwAuthzSvc,
          Pointer<Utf16> pServerPrincName,
          Uint32 dwAuthnLevel,
          Uint32 dwImpLevel,
          Pointer pAuthInfo,
          Uint32 dwCapabilities),
      int Function(
          Pointer pProxy,
          int dwAuthnSvc,
          int dwAuthzSvc,
          Pointer<Utf16> pServerPrincName,
          int dwAuthnLevel,
          int dwImpLevel,
          Pointer pAuthInfo,
          int dwCapabilities)>('CoSetProxyBlanket');
  return _CoSetProxyBlanket(pProxy, dwAuthnSvc, dwAuthzSvc, pServerPrincName,
      dwAuthnLevel, dwImpLevel, pAuthInfo, dwCapabilities);
}

/// Frees a block of task memory previously allocated through a call to the
/// CoTaskMemAlloc or CoTaskMemRealloc function.
///
/// ```c
/// void CoTaskMemFree(
///   _Frees_ptr_opt_ LPVOID pv
/// );
/// ```
/// {@category ole32}
void CoTaskMemFree(Pointer pv) {
  final _CoTaskMemFree = _ole32.lookupFunction<Void Function(Pointer pv),
      void Function(Pointer pv)>('CoTaskMemFree');
  return _CoTaskMemFree(pv);
}

/// Closes the COM library on the current thread, unloads all DLLs loaded
/// by the thread, frees any other resources that the thread maintains, and
/// forces all RPC connections on the thread to close.
///
/// ```c
/// void CoUninitialize();
/// ```
/// {@category ole32}
void CoUninitialize() {
  final _CoUninitialize =
      _ole32.lookupFunction<Void Function(), void Function()>('CoUninitialize');
  return _CoUninitialize();
}

/// Converts a string generated by the StringFromIID function back into the
/// original interface identifier (IID).
///
/// ```c
/// HRESULT IIDFromString(
///   LPCOLESTR lpsz,
///   LPIID     lpiid
/// );
/// ```
/// {@category ole32}
int IIDFromString(Pointer<Utf16> lpsz, Pointer<GUID> lpiid) {
  final _IIDFromString = _ole32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpsz, Pointer<GUID> lpiid),
      int Function(Pointer<Utf16> lpsz, Pointer<GUID> lpiid)>('IIDFromString');
  return _IIDFromString(lpsz, lpiid);
}

/// Initializes the COM library on the current apartment, and identifies
/// the concurrency model as single-thread apartment (STA). Applications
/// must initialize the COM library before they can call COM library
/// functions other than CoGetMalloc and memory allocation functions.
///
/// ```c
/// HRESULT OleInitialize(
///   LPVOID pvReserved
/// );
/// ```
/// {@category ole32}
int OleInitialize(Pointer pvReserved) {
  final _OleInitialize = _ole32.lookupFunction<
      Int32 Function(Pointer pvReserved),
      int Function(Pointer pvReserved)>('OleInitialize');
  return _OleInitialize(pvReserved);
}

/// Closes the COM library on the apartment, releases any class factories,
/// other COM objects, or servers held by the apartment, disables RPC on
/// the apartment, and frees any resources the apartment maintains.
///
/// ```c
/// void OleUninitialize();
/// ```
/// {@category ole32}
void OleUninitialize() {
  final _OleUninitialize = _ole32
      .lookupFunction<Void Function(), void Function()>('OleUninitialize');
  return _OleUninitialize();
}

/// Retrieves the ProgID for a given CLSID.
///
/// ```c
/// HRESULT ProgIDFromCLSID(
///   REFCLSID clsid,
///   LPOLESTR *lplpszProgID
/// );
/// ```
/// {@category ole32}
int ProgIDFromCLSID(Pointer<GUID> clsid, Pointer<Pointer<Utf16>> lplpszProgID) {
  final _ProgIDFromCLSID = _ole32.lookupFunction<
      Int32 Function(Pointer<GUID> clsid, Pointer<Pointer<Utf16>> lplpszProgID),
      int Function(Pointer<GUID> clsid,
          Pointer<Pointer<Utf16>> lplpszProgID)>('ProgIDFromCLSID');
  return _ProgIDFromCLSID(clsid, lplpszProgID);
}

/// Converts a CLSID into a string of printable characters. Different
/// CLSIDs always convert to different strings.
///
/// ```c
/// HRESULT StringFromCLSID(
///   REFCLSID rclsid,
///   LPOLESTR *lplpsz
/// );
/// ```
/// {@category ole32}
int StringFromCLSID(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz) {
  final _StringFromCLSID = _ole32.lookupFunction<
      Int32 Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
      int Function(Pointer<GUID> rclsid,
          Pointer<Pointer<Utf16>> lplpsz)>('StringFromCLSID');
  return _StringFromCLSID(rclsid, lplpsz);
}

/// Converts a globally unique identifier (GUID) into a string of printable
/// characters.
///
/// ```c
/// int StringFromGUID2(
///   REFGUID  rguid,
///   LPOLESTR lpsz,
/// int      cchMax
/// );
/// ```
/// {@category ole32}
int StringFromGUID2(Pointer<GUID> rguid, Pointer<Utf16> lpsz, int cchMax) {
  final _StringFromGUID2 = _ole32.lookupFunction<
      Int32 Function(Pointer<GUID> rguid, Pointer<Utf16> lpsz, Int32 cchMax),
      int Function(Pointer<GUID> rguid, Pointer<Utf16> lpsz,
          int cchMax)>('StringFromGUID2');
  return _StringFromGUID2(rguid, lpsz, cchMax);
}

/// Converts an interface identifier into a string of printable characters.
///
/// ```c
/// HRESULT StringFromIID(
///   REFIID   rclsid,
///   LPOLESTR *lplpsz
/// );
/// ```
/// {@category ole32}
int StringFromIID(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz) {
  final _StringFromIID = _ole32.lookupFunction<
      Int32 Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
      int Function(Pointer<GUID> rclsid,
          Pointer<Pointer<Utf16>> lplpsz)>('StringFromIID');
  return _StringFromIID(rclsid, lplpsz);
}
