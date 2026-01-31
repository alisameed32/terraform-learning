# types of variabels

/**
* String
* Number
* Boolean (bool)
* List
* Map
* Object
* Tuple
* Any
*/


# String variable
variable "region" {
  default = "us-east-1"
  type = string
  description = ""
}


# Number variable
variable "count" {
    default = 2
    type = number
}


# Boolean variable
variable "conditionCheck" {
  default = true
  type = bool
}

# List variable String
variable "availabilityzone" {
  default = ["us-east-1", "us-east-2", "us-east-3"]
  type = list(string)
  description = "Availability zone in aws"
}

# List variable Number
variable "ports" {
  default = [8080, 9090, 999, 443]
  type = list(number)
    description = "port"
}

# Map variable )
variable "tag" {
  type = map(string)
    default = {
        vm_owner = "Ali Sameed"
        vm_email_id = "alisameed@example.com"
    }
}

#Object variable
variable "db_config" {
  type = object({
    severhost = string
    severport      = number
    severurl  = string
  })

  default = {
    severhost = "mysql"
    severport      = 3306
    severurl  = "mysql.com"
  }
}

# Tuple variable
variable "db_config" {
  type = tuple([string, number, string, bool])
  default = ["ali", 9, "sameed", true]
}

# Any variable
variable "db_config" {
  type = any
}

variable "ami" {
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  default     = "t2.micro"
}

# like this is used in main.tf

/**

var.region
var.count
target = var.conditionCheck ? "linux" : "windows"
var.availabilityzone[0]
var.ports[0]
var.tag["vm_owner"]
var.tag["vm_email_id"]
var.db_config.severhost
var.db_config.severport
var.db_config.severurl
var.db_config[0]
var.db_config[1]
var.db_config[2]
var.db_config[3]

*/
