resource "aws_cloudwatch_metric_alarm" "cpu_utilization_for_jenkins_server" {
    alarm_name          = "cpu-utilization-alarm_for_jenkins_server"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = 1
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = 60
    statistic           = "Average"
    threshold           = 80

    dimensions = {
        InstanceId = aws_instance.jenkins_server.id
    }

    alarm_description = "Jenkins server cpu utilization reached 50%"
    actions_enabled   = true
    alarm_actions = [aws_sns_topic.cpu_utilization_topic.arn]
}

resource "aws_cloudwatch_metric_alarm" "cpu_utilization_for_sonar_server" {
    alarm_name          = "cpu-utilization-alarm_for_sonar_server"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = "60"
    statistic           = "Average"
    threshold           = "80"

    dimensions = {
        InstanceId = aws_instance.sonar_server.id
    }

    alarm_description = "Sonar server cpu utilization reached 50%"
    actions_enabled   = true
    alarm_actions = [aws_sns_topic.cpu_utilization_topic.arn]
  
}

resource "aws_cloudwatch_metric_alarm" "cpu_utilization_for_nexus_server" {
    alarm_name          = "cpu-utilization-alarm_for_nexus_server"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = "60"
    statistic           = "Average"
    threshold           = "80"

    dimensions = {
        InstanceId = aws_instance.nexus_server.id
    }

    alarm_description = "Nexus server cpu utilization reached 50%"
    actions_enabled   = true
    alarm_actions = [aws_sns_topic.cpu_utilization_topic.arn]
}
 
resource "aws_sns_topic" "cpu_utilization_topic" {
    name = "cpu-utilization-topic"
}

resource "aws_sns_topic_subscription" "cpu_utilization_topic_subscription" {
    topic_arn = aws_sns_topic.cpu_utilization_topic.arn
    protocol  = "email"
    endpoint  = "akashshewale0801@gmail.com"
}