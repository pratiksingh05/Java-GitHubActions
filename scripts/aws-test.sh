AWS_ACCESS_KEY_ID=$1
AWS_SECRET_ACCESS_KEY=$2
AWS_BUCKET=$3

echo "AWS Bucket : $AWS_BUCKET"

#install aws-cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip"
unzip awscliv2.zip
chmod +x ./aws/install
./aws/install

aws --version

echo "installed aws"
# Configure AWS CLI
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set default.region us-west-1

aws s3 ls

echo "uploading... file to s3"
#aws s3 cp ./upload-file/test.txt s3://$AWS_BUCKET/Unsaved/
aws s3 cp ./lambda.zip s3://$AWS_BUCKET/Unsaved/
echo "uploaded file to s3"
