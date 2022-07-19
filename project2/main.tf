resource "aws_sqs_queue" "terraform_queue" {
  name                      = "terraform-queue-example"
}