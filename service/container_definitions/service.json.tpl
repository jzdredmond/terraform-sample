[
  {
    "name": "sample-webapp",
    "image": "815718864459.dkr.ecr.ap-northeast-1.amazonaws.com/sample-image:latest",
    "cpu": 333,
    "memoryReservation": 600,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 4567
      }
    ],
    "command": ["bundle", "exec", "ruby", "app.rb", "-o", "0.0.0.0"]
  }
]
