import { Context } from "aws-lambda";

export const handler = async (event: Event, context: Context) => {
  console.log("event::", event);
  console.log("context::", context);
  // TODO implement
  const response = {
    statusCode: 200,
    body: JSON.stringify(`Hello from Lambda using TypeScript! ${event}`),
  };
  return response;
};
