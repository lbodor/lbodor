function FindProxyForURL(url, host) {
  if (host == "localhost") {
      return "DIRECT";
  }
  if (isInNet(myIpAddress(), "10.11.16.0", "255.255.255.0")) { // at GA
    return "PROXY proxy.inno.lan:3128";
  }
  else {
    return "DIRECT";
  }
}
