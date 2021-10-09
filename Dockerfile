FROM public.ecr.aws/lambda/nodejs:14

WORKDIR ${LAMBDA_TASK_ROOT}
COPY package.json .

RUN echo 'npm install ...'
RUN npm install && npm install typescript -g

RUN echo 'copy*'
COPY . .

RUN echo 'tsc ...'
RUN tsc

# Set the CMD to your handler
CMD [ "./dist/app.handler" ]