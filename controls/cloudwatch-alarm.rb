title "cloudwatch alarm check"

control "aws-cloudwatch-check" do
  impact 1.0
  title "Check in cloudwatch alarm"
  describe aws_cloudwatch_alarm(
    metric_name: "CPUUtilization", 
    metric_namespace: "AWS/EC2",
    dimensions: [{"InstanceId": "i-XXXXXXXXX"}]
  ) do
    it { should exist }
  end  
end
