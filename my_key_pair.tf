resource "aws_key_pair" "talant_key_pair" {
  key_name              = var.var_key
  public_key            = var.var_public_key
  
}
