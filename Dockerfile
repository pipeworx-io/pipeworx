FROM node:20-alpine
# Pipeworx is a remote MCP gateway at https://gateway.pipeworx.io/mcp.
# This Dockerfile lets MCP introspectors bridge stdio -> HTTPS via mcp-remote.
ENTRYPOINT ["npx", "-y", "mcp-remote@latest", "https://gateway.pipeworx.io/mcp"]
