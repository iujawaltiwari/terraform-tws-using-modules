resource "aws_instance" "mera_instance" {
        ami = "ami-03f4878755434977f"
        instance_type = "t2.micro"
        tags = {
          Name = "mera_instance"
        }
}

module "my_module" {

    source = "./my_dem_module"
    

    env = "dev"
    instance_type = "t2.micro"
    ami = "ami-03f4878755434977f"
    instance_name = "batch-5-module-dem"

}
module "my_prd_app" {

    source = "./my_dem_module"


    env = "prd"
    instance_type = "t2.medium"
    ami = "ami-03f4878755434977f"
    instance_name = "batch-5-module-dem"

}
