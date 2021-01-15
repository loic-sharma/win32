// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Demonstrates sending input to another window via SendInput()

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const VK_A = 0x41;

void main() {
  print('Switching to Notepad and going to sleep for a second.');
  ShellExecute(0, TEXT('open'), TEXT('notepad.exe'), nullptr, nullptr, SW_SHOW);
  Sleep(1000);

  print('Sending the "A" key and the Unicode character "€".');
  final kbd = zeroAllocate<INPUT>();
  kbd.ref.type = INPUT_KEYBOARD;
  kbd.ki.wVk = VK_A;
  var result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  kbd.ki.dwFlags = KEYEVENTF_KEYUP;
  result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  kbd.ki.wVk = 0;
  kbd.ki.wScan = 0x20AC; // euro sign
  kbd.ki.dwFlags = KEYEVENTF_UNICODE;
  result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  kbd.ki.dwFlags = KEYEVENTF_UNICODE | KEYEVENTF_KEYUP;
  result = SendInput(1, kbd, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  free(kbd);

  print('Sending a right-click mouse event.');
  final mouse = zeroAllocate<INPUT>();
  mouse.ref.type = INPUT_MOUSE;
  mouse.mi.dwFlags = MOUSEEVENTF_RIGHTDOWN;
  result = SendInput(1, mouse, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  Sleep(1000);
  mouse.mi.dwFlags = MOUSEEVENTF_RIGHTUP;
  result = SendInput(1, mouse, sizeOf<INPUT>());
  if (result != TRUE) print('Error: ${GetLastError()}');

  free(mouse);
}
