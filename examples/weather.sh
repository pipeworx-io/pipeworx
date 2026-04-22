#!/bin/bash
# Get weather for a location
curl -s -X POST "https://gateway.pipeworx.io/weather/mcp" \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"get_weather","arguments":{"latitude":37.7749,"longitude":-122.4194}}}' | python3 -m json.tool
