/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * AIDL for the Bluetooth Connect, Link, Compete Service
 * IConnection.java is autogenerated from this
 */

package backport.net.clc.bt;

// TODO: Ideally, we would import BluetoothDevice here
// and use that instead of just a String in the connect
// method for better type safety, but this is currently
// not possible yet.

import backport.net.clc.bt.IConnectionCallback;

// Declare the interface.
interface IConnection {
  String getAddress();
  String getName();
  int startServer(in String srcApp, in int maxConnections);
  int connect(in String srcApp, in String device);
  int sendMessage(in String srcApp, in String device, in String message);
  int broadcastMessage(in String srcApp, in String message);
  String getConnections(in String srcApp);
  int getVersion();
  int registerCallback(in String srcApp, IConnectionCallback cb);
  int unregisterCallback(in String srcApp);
  void shutdown(in String srcApp);
}
