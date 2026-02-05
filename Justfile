image_name := "workeros"
default_tag := "latest"

build target_image=image_name tag=default_tag:
    podman build -t {{target_image}}:{{tag}} .
```

---

### **4. .gitignore**
```
cosign.key
*.log