provider "google" {
	version = "3.5.0"	
	project = "cloudworks-252411"
	region  = "us-central1"
	zone    = "us-central1-c"	
}
#credentials = file("cloudworks-252411-74141a6894a2.json")

# Our logged compute instance
resource "google_compute_instance" "my-logged-instance" {
  name         = "my-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
}
