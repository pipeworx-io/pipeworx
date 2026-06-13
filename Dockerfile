FROM node:20-alpine
# Pipeworx is a remote MCP gateway. This Dockerfile lets MCP introspectors
# (e.g. Glama) bridge stdio -> HTTPS via mcp-remote. It targets the scoped
# "pipeworx-catalog" connection: anonymous, no OAuth, and a compact tool
# surface, so start + introspection complete fast and deterministically.
# This matches the `remotes` entry in server.json. The full catalog of
# thousands of tools is reachable at https://gateway.pipeworx.io/mcp.
ENTRYPOINT ["npx", "-y", "mcp-remote@latest", "https://gateway.pipeworx.io/pipeworx-catalog/mcp"]
