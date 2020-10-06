resource "aws_ecr_repository" "mediawiki"{
  name                 = "mediawiki"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "registryURL" {
  
            values = "{aws_ecr_repository.mediawiki.repository_url}"

}
