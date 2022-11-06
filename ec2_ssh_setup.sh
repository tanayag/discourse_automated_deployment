set -o allexport
source .env
set +o allexport

chmod 400 "${AWS_KEY_PATH}"

scp -i "${AWS_KEY_PATH}" ./discourse_setup.sh "${AWS_USERNAME}"@"${AWS_PUBLIC_DNS}":discourse_setup.sh
scp -i "${AWS_KEY_PATH}" .env "${AWS_USERNAME}"@"${AWS_PUBLIC_DNS}":.env

ssh -i "${AWS_KEY_PATH}" "${AWS_USERNAME}"@"${AWS_PUBLIC_DNS}"