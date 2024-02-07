# Create GCP Compute Engine Instance and setup Wordpress
resource "google_compute_instance" "wordpress-server" {
  name = "wordpress-server"
  can_ip_forward = true
  zone = var.zone
  machine_type = "e2-medium"
  boot_disk {
    device_name = "boot"
    auto_delete = true
    initialize_params {
      size = 10
      image = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/family/debian-12"
      type = "pd-standard"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata = {
    startup-script = file("./setup.sh")
  }
  service_account {
    email = var.service_account
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
  tags = ["http-server", "https-server"]
}
