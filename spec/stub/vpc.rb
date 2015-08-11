Aws.config[:ec2] = {
  stub_responses: {
    describe_vpcs: {
      vpcs: [
        {
          vpc_id: 'vpc-ab123cde',
          state: 'available',
          cidr_block: '10.0.0.0/16',
          tags: [
            {
              key: 'Name',
              value: 'my-vpc'
            }
          ]
        }
      ]
    },
    describe_route_tables: {
      route_tables: [
        {
          route_table_id: 'rtb-a12bcd34',
          vpc_id: 'vpc-ab123cde',
          routes: [
            {
              destination_cidr_block: '10.0.0.0/16',
              destination_prefix_list_id: nil,
              gateway_id: 'local',
              instance_id: nil,
              instance_owner_id: nil,
              network_interface_id: nil,
              vpc_peering_connection_id: nil,
              state: 'active'
            },
            {
              destination_cidr_block: '0.0.0.0/0',
              destination_prefix_list_id: nil,
              gateway_id: 'igw-1ab2345c',
              instance_id: nil,
              instance_owner_id: nil,
              network_interface_id: nil,
              vpc_peering_connection_id: nil,
              state: 'active'
            }
          ],
          tags: [
            {
              key: 'Name',
              value: 'my-route-table'
            }
          ]
        }
      ]
    },
    describe_network_acls: {
      network_acls: [
        {
          network_acl_id: 'acl-1abc2d3e',
          vpc_id: 'vpc-ab123cde',
          tags: [
            {
              key: 'Name',
              value: 'my-network-acl'
            }
          ]
        }
      ]
    }
  }
}
