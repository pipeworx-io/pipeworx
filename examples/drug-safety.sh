#!/bin/bash
# Check adverse events for a drug
curl -s -X POST "https://gateway.pipeworx.io/mcp" \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"ask_pipeworx","arguments":{"question":"What are the side effects of ozempic?"}}}' | python3 -m json.tool
