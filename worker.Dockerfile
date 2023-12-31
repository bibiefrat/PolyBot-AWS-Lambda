# reference https://docs.aws.amazon.com/lambda/latest/dg/python-image.html
FROM public.ecr.aws/lambda/python:3.9

# Copy function code
COPY . ${LAMBDA_TASK_ROOT}

RUN pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "worker.lambda_handler" ]