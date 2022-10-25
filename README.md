# AWS Terraform
Terraform module that allows you to create an ec2 group with a vpc all at once.

Here is the link to help yo uwith installing terraform & here are the instructions given from HashiCorp on how to install there software.
```
https://learn.hashicorp.com/tutorials/terraform/install-cli
```
Ensure that your system is up to date, and you have the gnupg, software-properties-common, and curl packages installed. You will use these packages to verify HashiCorp's GPG signature, and install HashiCorp's Debian package repository.
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```
Install the HashiCorp GPG key.
```
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

```
Verify the key's fingerprint.

```
gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint
```
The fingerprint must match E8A0 32E0 94D8 EB4E A189 D270 DA41 8C88 A321 9F7B. You can also verify the key on Security at HashiCorp under Linux Package Checksum Verification.

Add the official HashiCorp repository to your system. The lsb_release -cs command finds the distribution release codename for your current system, such as buster, groovy, or sid.

```
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
```

Download the package information from HashiCorp.
```
sudo apt-get update
```
Install Terraform from the new repository.
```
sudo apt-get install terraform 
```
# Downloading and Applying the IaC
