output "bucket_name" {
  value = yandex_storage_bucket.image_bucket.bucket
}

output "image_url" {
  value = "https://${yandex_storage_bucket.image_bucket.bucket}.storage.yandexcloud.net/${yandex_storage_object.image.key}"
}

output "nlb_ip" {
  value = tolist(yandex_lb_network_load_balancer.lamp_nlb.listener)[0].external_address_spec[0].address
}

output "instance_group_id" {
  value = yandex_compute_instance_group.lamp_group.id
}