FROM public.ecr.aws/lambda/nodejs:14

# Copy function code  
COPY app.js ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler
CMD [ "app.handler" ]