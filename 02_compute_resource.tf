resource "google_compute_instance" "jenkins" {
	name = "${var.name}"
	machine_type = "${var.machine_type}"
	zone = "${var.zone}"
	tags = ["${var.name}"]
	boot_disk {
		initialize_params {
			image = "${var.image}"
		}
	}
	network_interface {
		network = "${var.network}"
		access_config {
			// Ephemeral IP
		}
	}
}

resource "google_compute_attached_disk" "jenkins-home" {
	depends_on = ["google_compute_instance.jenkins"]
  	disk = "jenkins-home"
  	instance = "${var.name}"
	zone = "${var.zone}"
}

