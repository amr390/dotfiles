#!/usr/bin/env bash


vpc="vpc-085a5f231a6aedfbb" 
profile="tonim"
aws ec2 describe-internet-gateways --filters 'Name=attachment.vpc-id,Values='$vpc --profile $profile | grep InternetGatewayId
aws ec2 describe-subnets --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep SubnetId
aws ec2 describe-route-tables --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep RouteTableId
aws ec2 describe-network-acls --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep NetworkAclId
aws ec2 describe-vpc-peering-connections --filters 'Name=requester-vpc-info.vpc-id,Values='$vpc  --profile $profile | grep VpcPeeringConnectionId
aws ec2 describe-vpc-endpoints --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep VpcEndpointId
aws ec2 describe-nat-gateways --filter 'Name=vpc-id,Values='$vpc  --profile $profile | grep NatGatewayId
aws ec2 describe-security-groups --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep GroupId
aws ec2 describe-instances --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep InstanceId
aws ec2 describe-vpn-connections --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep VpnConnectionId
aws ec2 describe-vpn-gateways --filters 'Name=attachment.vpc-id,Values='$vpc  --profile $profile | grep VpnGatewayId
aws ec2 describe-network-interfaces --filters 'Name=vpc-id,Values='$vpc  --profile $profile | grep NetworkInterfaceId
