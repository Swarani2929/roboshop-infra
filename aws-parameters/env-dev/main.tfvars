parameters = [
  {name = "dev.frontend.catalogue_url", value = "http://localhost:8080/", type = "String"},
  {name = "dev.frontend.user_url", value = "http://localhost:8080/", type = "String"},
  {name = "dev.frontend.cart_url", value = "http://localhost:8080/", type = "String"},
  {name = "dev.frontend.shipping_url", value = "http://localhost:8080/", type = "String"},
  {name = "dev.frontend.payment_url", value = "http://localhost:8080/", type = "String"},
  {name = "dev.user.mongo", value = "true", type = "String"},
  {name = "dev.user.redis_host", value = "dev-redis.devops25.online/", type = "String"},
  {name = "dev.user.mongo_url", value = "mongodb://mongodb-dev.devops25.online:27017/users/", type = "String"},
  {name = "dev.shipping.cart_endpoint", value = "cart-dev.devops25.online", type = "String"},
  {name = "dev.shipping.db_host", value = "mysql-dev.devops25.online", type = "String"},
  {name = "dev.payment.cart_host", value = "cart-dev.devops25.online", type = "String"},
  {name = "dev.payment.cart_port", value = "8080", type = "String"},
  {name = "dev.payment.user_host", value = "user-dev.devops25.online", type = "String"},
  {name = "dev.payment.user_port", value = "8080", type = "String"},
  {name = "dev.payment.amqp_host", value = "rabbitmq-dev.devops25.online", type = "String"}


]

Environment=CART_HOST={{ lookup('amazon.aws.aws_ssm', '{{env}}.{{component}}.cart_host', region='us-east-1') }}
Environment=CART_PORT={{ lookup('amazon.aws.aws_ssm', '{{env}}.{{component}}.cart_port', region='us-east-1') }}
Environment=USER_HOST={{ lookup('amazon.aws.aws_ssm', '{{env}}.{{component}}.user_host', region='us-east-1') }}
Environment=USER_PORT={{ lookup('amazon.aws.aws_ssm', '{{env}}.{{component}}.user_port', region='us-east-1') }}
Environment=AMQP_HOST={{ lookup('amazon.aws.aws_ssm', '{{env}}.{{component}}.amqp_host', region='us-east-1') }}