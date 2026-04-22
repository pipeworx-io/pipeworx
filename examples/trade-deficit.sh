#!/bin/bash
# Get the US trade deficit with China
curl -s -X POST "https://gateway.pipeworx.io/mcp" \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"ask_pipeworx","arguments":{"question":"What is the US trade deficit with China?"}}}' | python3 -m json.tool
