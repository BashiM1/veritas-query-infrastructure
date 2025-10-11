import json 
# from ksuid import Ksuid

def lambda_handler(event, context):
    try:
        print(event)
        body = json.loads(event['body'])
        prompt = body['prompt']
        # id = Ksuid()
        return {
            'statusCode': 200,
            'body': json.dumps(str(f"You sent {prompt}"))
        }
    except Exception as e:
        return {
            'statusCode': 500,
            'body': json.dumps({
                'message': str(e)
            })
        }
