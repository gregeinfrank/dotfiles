Vim�UnDo� c�(E���{��q $0�|����~>OS�/���   �           4                       X&<�    _�                     s        ����                                                                                                                                                                                                                                                                                                                            s           i           V        W��M     �   s      �    �   s   t   �    5�_�                    t        ����                                                                                                                                                                                                                                                                                                                            s           i           V        W��N     �   s   u      �   t   u      5�_�                    u        ����                                                                                                                                                                                                                                                                                                                            s           i           V        W��P    �   t   v        2resource "aws_lambda_function" "es_clean_backup" {5�_�                   v   )    ����                                                                                                                                                                                                                                                                                                                            s           i           V        W��     �   u   w        1    function_name = "elasticsearch_clean_backups"5�_�                    u   4    ����                                                                                                                                                                                                                                                                                                                            s           i           V        W��    �   t   v        =resource "aws_lambda_function" "elasticsearch_clean_backup" {5�_�                    h        ����                                                                                                                                                                                                                                                                                                                            s           h           V   7    W���    �   g   h              2resource "aws_lambda_function" "es_clean_backup" {   1    function_name = "elasticsearch_clean_backups"   1    s3_bucket = "${aws_s3_bucket.lambda_code.id}"   1    s3_key = "fin_backups/elasticsearch_prod.zip"   :    s3_object_version = "R7aVQAZfIwXp1HWlGg8nW3FsdN6WuAEi"   6    role = "${aws_iam_role.lambda_assume_es_role.arn}"   *    handler = "backup.clean_old_snapshots"       runtime = "python2.7"   A    description = "Clean snapshots that are more than a week old"       timeout = 120   }5�_�      	              �        ����                                                                                                                                                                                                                                                                                                                            �   #       �           V   #    X&<�     �   �   �          ;resource "aws_iam_policy" "lambda_rds_eng_sandbox_policy" {   *    name = "lambda_rds_eng_sandbox_policy"   W    description = "Gives the RDS backup lambda function access to create rds snapshots"       policy = <<EOF   {       "Version": "2012-10-17",       "Statement": [   	        {               "Sid": "1",               "Action": [   &                "rds:CreateDBSnapshot"               ],               "Effect": "Allow",               "Resource": [   =                "${aws_db_instance.primary_eng_sandbox.arn}",   a                "arn:aws:rds:${var.aws_region}:${var.aws_fin_ventures_account_number}:snapshot:*"               ]   
        },   	        {               "Sid": "2",   %            "Action": "s3:GetObject",               "Effect": "Allow",   D            "Resource": "arn:aws:s3:::fin-lambda-code/fin_backups/*"   	        }       ]   }   EOF   }    5�_�      
           	   �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        X&<�     �   �   �          Qresource "aws_iam_policy_attachment" "lambda_rds_eng_sandbox_policy_attachment" {   5    name = "lambda_rds_eng_sandbox_policy_attachment"   ;    roles = ["${aws_iam_role.lambda_rds_eng_sandbox.name}"]   F    policy_arn = "${aws_iam_policy.lambda_rds_eng_sandbox_policy.arn}"   }    5�_�   	              
   �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        X&<�    �   �   �       
   -resource "aws_lambda_function" "rds_backup" {   -    function_name = "rds_backups_eng_sandbox"   1    s3_bucket = "${aws_s3_bucket.lambda_code.id}"   &    s3_key = "fin_backups/package.zip"   :    s3_object_version = "yFKPyHt5dgsG5bITcUGBD7E7H0QOBpso"   7    role = "${aws_iam_role.lambda_rds_eng_sandbox.arn}"   0    handler = "main.postgres_rds_backup_handler"       runtime = "python2.7"   }    5�_�   
                  u        ����                                                                                                                                                                                                                                                                                                                            u          �           V       X&<�    �   t   u          ###   ### RDS backups for eng sandbox   ###   2resource "aws_iam_role" "lambda_rds_eng_sandbox" {   (    name = "lambda_rds_role_eng_sandbox"       assume_role_policy = <<EOF   {     "Version": "2012-10-17",     "Statement": [       {   !      "Action": "sts:AssumeRole",         "Principal": {   )        "Service": "lambda.amazonaws.com"         },         "Effect": "Allow",         "Sid": ""       }     ]   }   EOF   }    5�_�                    v   0    ����                                                                                                                                                                                                                                                                                                                            s           i           V        W��     �   u   w        4    function_name = "elasticsearch_clean_backups_v2"5��