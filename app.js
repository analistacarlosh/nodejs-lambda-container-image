exports.handler = async (event, context) => {
  console.log('event::', event);
  console.log('context::', context);
  // TODO implement
  const response = {
      statusCode: 200,
      body: JSON.stringify(`Hello from Lambda! ${event}`),
  };
  return response;
};