output "ses_iam_user_arn" {
    value = "${aws_iam_user.ses_iam_user.arn}"
}
output "ses_iam_user_name" {
    value = "${aws_iam_user.ses_iam_user.name}"
}
output "ses_iam_user_unique_id" {
    value = "${aws_iam_user.ses_iam_user.unique_id}"
}

output "ses_iam_access_key_id" {
    value = "${aws_iam_access_key.ses_iam_access_key.id}"
}
output "ses_iam_access_key_user" {
    value = "${aws_iam_access_key.ses_iam_access_key.user}"
}

output "ses_iam_access_key_key_fingerprint" {
    value = "${aws_iam_access_key.ses_iam_access_key.key_fingerprint}"
}
output "ses_iam_access_key_encrypted_secret" {
    value = "${aws_iam_access_key.ses_iam_access_key.encrypted_secret}"
}
output "ses_iam_access_key_ses_smtp_password" {
    value = "${aws_iam_access_key.ses_iam_access_key.ses_smtp_password}"
}
output "ses_iam_access_key_status" {
    value = "${aws_iam_access_key.ses_iam_access_key.status}"
}