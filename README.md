Need to create the task image and publish to ECR first - i used this `Dockerfile`

```
FROM nginx:latest

LABEL maintainer="fargate-demo <david-wells-1>"

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```
