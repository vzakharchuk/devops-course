# kubectl-stats Plugin

This script provides a simple way to retrieve resource usage statistics for Kubernetes resources using `kubectl`.

## Usage


1. Save the `kubeplugin` script to your local machine. Rename it to `kubectl-stats`.
2. Make the script executable
```bash
chmod +x kubectl-stats
```
3. Move the script to a directory that is in your PATH. For example:
```bash
mv kubectl-stats /usr/local/bin
```
4. Now you can run the script as a `kubectl` plugin:`
```bash
kubectl stats <resource> <namespace>
```
Replace `<resource>` and `<namespace>` with the desired resource type and namespace.
