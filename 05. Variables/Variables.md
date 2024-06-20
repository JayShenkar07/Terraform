
# Using Varibles in Terraform

There are 2 types of variables in Terraform

* __Input Variables__: To pass the information to terraform to make resources creation parametrizerd
* __Output Variables__; These will help us to get details of the launched resources

Refer the attached `main.tf` file 

Following are glimpses of running this terraform script:

```
terraform plan -var 'name=value' -var 'name=value'
```

```
terraform apply -var 'name=value' -var 'name=value'
```




The command I used on windows system (Don't forget to replace the command with you ami id) :
```
terraform apply -var "var1=ami-013e83f579886baeb" -var "var2=t2.mi
cro"
```


![Architecture](https://i.ibb.co/TrvgNBV/terra1.png)

