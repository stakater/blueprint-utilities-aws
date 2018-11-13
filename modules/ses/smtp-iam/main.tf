resource "aws_iam_user" "ses_iam_user" {
  name = "${var.ses_iam_user_name}"
  path = "${var.ses_iam_user_paths}"
}

resource "aws_iam_access_key" "ses_iam_access_key" {
  user = "${aws_iam_user.ses_iam_user.name}"
  pgp_key = "${var.pgp_key}"
}

resource "aws_iam_user_policy" "ses_iam_user_policy" {
  name = "${var.ses_iam_user_policy_name}"
  user = "${aws_iam_user.ses_iam_user.name}"
  policy = "${var.ses_iam_user_policy}"
}