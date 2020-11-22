# for mac and ubuntu hence `mubs`

wget https://files.pythonhosted.org/packages/e5/50/bd3e53910ea5015597b7f456d15ef4e04bf499a1b4929a5aa86df236d413/apk-signer-1.1.1.tar.gz

tar -zxf apk-signer-1.1.1.tar.gz

echo installing...


apt install python pip -y

cd apk-signer-1.1.1

pip install apk-signer

echo "
$ apk-signer sample.apk
[Warning] Signing with default keystore.
[Warning] Please pass --key_path, --key_alias, --key_pass, --ks_pass parameter, if you want to use your keystore
> sample-signed.apk
$ apk-signer sample.apk --key_path="sample.jks" --key_alias="sample" --key_pass="sample_key" --ks_pass="sample_ks"
> sample-signed.apk
$ apk-signer sample.apk --run
> Success
> Performing Streamed Install\nSuccess
> Starting: Intent { cmp=com.sample.activty/.MainActivity }

"
