variable "project" {
	default = ""
}

variable "terraform_keys" {
	default = ""
}

variable "name" {
	default = "jenkins"
}

variable "machine_type" {
	default = "n1-standard-1"
}

variable "region" {
	default = "europel-west2"
}

variable "zone" {
	default = "europe-west2-c"
}

variable "image" {
	default = "jenkins"
}

variable "network" {
	default = "default"
}

variable "disk" {
	default = "jenkins-home"
}

