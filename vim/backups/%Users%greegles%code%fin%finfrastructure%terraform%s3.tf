Vim�UnDo� ꌲ$��9�\��ݎ}�>�J{'ֹ|�s�1��E   �                                  W���    _�                     �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���    �   �   �          5    bucket = "${aws_s3_bucket.www-getfin-com.bucket}"5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �   �          acl    = "public-read"5�_�                   �   ,    ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �   �      5        redirect_all_requests_to = "www.fin.ventures"5�_�                    �   /    ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �   �      1        redirect_all_requests_to = "www.fin.come"5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���    �   �   �          %        index_document = "index.html"5�_�      	              �   (    ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �   �      3        redirect_all_requests_to = "www.getfin.com"5�_�      
           	   �       ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �   �    �   �   �   �    5�_�   	              
   �       ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �          %        index_document = "index.html"5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���    �   �   �   �          acl    = "public-read"5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �          V       W���     �   �   �          ?resource "aws_s3_bucket_object" "www-fin-ventures-index-html" {   7    bucket = "${aws_s3_bucket.www-fin-ventures.bucket}"       key = "index.html"       content_type = "text/html"   K    content = "${file("terraform/s3_documents/bucket_default_index.html")}"   }5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �          V       W���     �   �   �           5�_�                     �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���    �   �   �              =resource "aws_s3_bucket_object" "www-getfin-com-index-html" {   5    bucket = "${aws_s3_bucket.www-getfin-com.bucket}"       key = "index.html"       content_type = "text/html"   K    content = "${file("terraform/s3_documents/bucket_default_index.html")}"   }5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �           �           V        W���     �   �   �   �    �   �   �   �      5        redirect_all_requests_to = "www.fin.ventures"5��