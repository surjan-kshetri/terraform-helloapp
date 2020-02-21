resource "aws_launch_configuration" "default" {
  name          = "terraform-springboot-helloapp"
  image_id      = "ami-04ff587bc1c1d65e6"
  instance_type = "t2.micro"
  key_name = "terraform-springboot-helloapp"
  security_groups = ["${aws_security_group.default.id}"]
  iam_instance_profile = "${aws_iam_instance_profile.default.name}"
  user_data = "${data.template_file.default.rendered}"
}
data "template_file" "default" {
  template = "${file("script/user-data.sh")}"
}
